import sys
from datetime import datetime, timedelta

from django.db.models.aggregates import Count
from django.shortcuts import render
from django.utils import timezone
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.decorators import action
from rest_framework.filters import OrderingFilter, SearchFilter
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet

from store.models import (AssociateHospital, AssociateHospitalMember,
                          AssociateVolunteer, AssociateVolunteerMember, Blog,
                          BloodDonorRequest, District,
                          EmergencyDonorOrganization,
                          EmergencyDonorOrganizationMember, Gallery,
                          GalleryImage, Municipality, Person, Province,
                          Sponsor, UserReview, VolunteerRequest, Ward)
from store.serializers import (AssociateHospitalMemberSerializer,
                               AssociateHospitalSerializer,
                               AssociateVolunteerMemberSerializer,
                               AssociateVolunteerSerializer, BlogSerializer,
                               BloodDonorRequestSerializer, DistrictSerializer,
                               EmergencyDonorOrganizationMemberSerializer,
                               EmergencyDonorOrganizationSerializer,
                               GalleryImgeSerializer, GallerySerializer,
                               MunicipalitySerializer, PersonSerializer,
                               ProvinceSerializer, SponsorSerializer,
                               UserReviewSerializer,
                               VolunteerRequestSerializer, WardSerializer)

from .filters import PersonFilter

# Create your views here.


class PersonViewSet(ModelViewSet):
    queryset = Person.objects.select_related('user', 'permanent_address').all()
    serializer_class = PersonSerializer
    filter_backends = [DjangoFilterBackend, SearchFilter, OrderingFilter]
    filterset_class = PersonFilter
    ordering_fields = ['age']
    search_fields = ['permanent_address__municipality__name']

    @action(detail=False, methods=['GET'])
    def recent_donors(self, request):

        current_datetime = timezone.now()
        past_datetime = current_datetime - timedelta(days=90)
        # donors = Person.objects.all().filter(
        #     user__date_joined__gte=past_datetime, user__is_donor=True)
        donors = Person.objects.all().filter(
            latest_donation__gte=past_datetime, user__is_donor=True)
        serializer = PersonSerializer(donors, many=True)
        return Response(serializer.data)

    @action(detail=False, methods=['GET'])
    def all_donors(self, request):
        donors = Person.objects.all().filter(user__is_donor=True)
        serializer = PersonSerializer(donors, many=True)
        return Response(serializer.data)

    @action(detail=False, methods=['GET'])
    def all_donors_count(self, request):
        donors_count = Person.objects.filter(
            user__is_donor=True).aaggregate(count=Count('id'))
        return Response(donors_count)

    # @action(detail=False, methods=['GET'])
    # def emergency_donors(self, request):
    #     donors = Person.objects.all().filter(user__is_emergency_donor=True)
    #     serializer = PersonSerializer(donors, many=True)
    #     return Response(serializer.data)
    @action(detail=False, methods=['GET'])
    def all_donors(self, request):
        donors = Person.objects.all().filter(user__is_donor=True)
        serializer = PersonSerializer(donors, many=True)
        return Response(serializer.data)

    @action(detail=False, methods=['GET'])
    def volunteers(self, request):
        volunteers = Person.objects.all().filter(user__is_volunteer=True)
        serializer = PersonSerializer(volunteers, many=True)
        return Response(serializer.data)

    # @action(detail=False, methods=['GET', 'PUT', 'PATCH'], permission_classes=[IsAuthenticated])
    # def me(self, request):
    #     (customer, created) = Customer.objects.get_or_create(
    #         user_id=request.user.id)
    #     if request.method == 'GET':
    #         serializer = CustomerSerializer(customer)
    #         return Response(serializer.data)
    #     elif request.method == 'PUT':
    #         serializer = CustomerSerializer(customer, data=request.data)
    #         serializer.is_valid(raise_exception=True)
    #         serializer.save()
    #         return Response(serializer.data)


class ProvinceViewSet(ModelViewSet):
    queryset = Province.objects.all()
    serializer_class = ProvinceSerializer


class DistrictViewSet(ModelViewSet):
    queryset = District.objects.all()
    serializer_class = DistrictSerializer


class MunicipalityViewSet(ModelViewSet):
    queryset = Municipality.objects.all()
    serializer_class = MunicipalitySerializer


class WardViewSet(ModelViewSet):
    queryset = Ward.objects.all()
    serializer_class = WardSerializer
    filter_backends = [DjangoFilterBackend, SearchFilter]
    search_fields = ['municipality__name']


class GalleryViewSet(ModelViewSet):
    queryset = Gallery.objects.all()
    serializer_class = GallerySerializer

    # @action(detail=False, methods=['GET'])
    # def recent(self, request):
    #     queryset = GalleryImage.objects.all()
    #     serializer = GalleryImageSerializer()
    @action(detail=False, methods=['GET'])
    def recent(self, request):
        recent_images = GalleryImage.objects.all().order_by(
            '-gallery__created_at')[:10]
        serializer = GalleryImgeSerializer(recent_images, many=True)
        return Response(serializer.data)


class GalleryImageViewSet(ModelViewSet):
    serializer_class = GalleryImgeSerializer

    def get_queryset(self):
        return GalleryImage.objects.filter(gallery_id=self.kwargs['gallery_pk'])

    def get_serializer_context(self):
        return {'gallery_id': self.kwargs['gallery_pk']}


class BlogViewSet(ModelViewSet):
    queryset = Blog.objects.all()
    serializer_class = BlogSerializer
    filter_backends = [DjangoFilterBackend, OrderingFilter]
    ordering_fields = ['created_at']


class UserReviewViewSet(ModelViewSet):
    queryset = UserReview.objects.all()
    serializer_class = UserReviewSerializer


# class EmergencyDonorViewSet(ModelViewSet):
#     queryset = EmergencyDonor.objects.all()
#     serializer_class = EmergencyDonorSerializer

#     @action(detail=False, methods=['GET'])
#     def professsion_types(self, request):
#         profession_types = list(set(pt[0] for pt in EmergencyDonor.PROFESSION_TYPE_CHOICES))

#         return Response(profession_types)


class EmergencyDonorOrganizationViewSet(ModelViewSet):
    queryset = EmergencyDonorOrganization.objects.all()
    serializer_class = EmergencyDonorOrganizationSerializer


class EmergencyDonorOrganizationMemberViewSet(ModelViewSet):
    serializer_class = EmergencyDonorOrganizationMemberSerializer

    def get_queryset(self):
        return EmergencyDonorOrganizationMember.objects.filter(organization_id=self.kwargs['emergency_pk'])

    def get_serializer_context(self):
        return {'emergency_id': self.kwargs['emergency_pk']}


class AssociateVolunteerViewSet(ModelViewSet):
    queryset = AssociateVolunteer.objects.all()
    serializer_class = AssociateVolunteerSerializer


class AssociateVolunteerMemberViewSet(ModelViewSet):
    serializer_class = AssociateVolunteerMemberSerializer

    def get_queryset(self):
        return AssociateVolunteerMember.objects.filter(organization_id=self.kwargs['associate_pk'])

    def get_serializer_context(self):
        return {'associate_id': self.kwargs['associate_pk']}


class AssociateHospitalViewSet(ModelViewSet):
    queryset = AssociateHospital.objects.all()
    serializer_class = AssociateHospitalSerializer


class AssociateHospitalMemberViewSet(ModelViewSet):
    serializer_class = AssociateHospitalMemberSerializer

    def get_queryset(self):
        return AssociateHospitalMember.objects.filter(hospital_id=self.kwargs['hospital_pk'])

    def get_serializer_context(self):
        return {'hospital_id': self.kwargs['hospital_pk']}


class BloodDonorRequestViewSet(ModelViewSet):
    queryset = BloodDonorRequest.objects.all()
    serializer_class = BloodDonorRequestSerializer


class VolunteerRequestViewSet(ModelViewSet):
    queryset = VolunteerRequest.objects.all()
    serializer_class = VolunteerRequestSerializer


class SponsorViewSet(ModelViewSet):
    queryset = Sponsor.objects.all()
    serializer_class = SponsorSerializer
