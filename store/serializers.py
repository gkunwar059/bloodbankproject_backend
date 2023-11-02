
from django.conf import settings
from django.contrib.auth import get_user_model
from rest_framework import serializers

from store.models import (Address, AssociateHospital, AssociateHospitalMember,
                          AssociateHospitalQuickContact, AssociateVolunteer,
                          AssociateVolunteerMember,
                          AssociateVolunteerQuickContact, Blog,
                          BloodDonorRequest, ContactUs, District,
                          EmergencyDonorOrganization,
                          EmergencyDonorOrganizationMember,
                          EmergencyDonorOrganizationQuickContact, Gallery,
                          GalleryImage, Municipality, MunicipalityQuickContact,
                          Person, Province, Sponsor, UserReview,
                          VolunteerRequest, Ward)


class AddressSerializer(serializers.ModelSerializer):
    province = serializers.CharField(max_length=50)
    district = serializers.CharField(max_length=100)
    municipality = serializers.CharField(max_length=50)
    ward = serializers.SerializerMethodField()

    class Meta:
        model = Address
        fields = ['id', 'province', 'district', 'municipality',
                  'ward', 'tole', 'house_number', 'local_name']

    def get_ward(self, obj):
        return obj.ward.ward_number


class PersonSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(read_only=True)
    permanent_address = AddressSerializer()
    # current_address = AddressSerializer()
    # workplace = AddressSerializer()
    user = serializers.PrimaryKeyRelatedField(
        queryset=get_user_model().objects.all(),  # Queryset for user objects
        write_only=True,  # Exclude 'user' during serialization
    )

    class Meta:
        model = Person
        fields = ['id', 'user', 'first_name', 'last_name', 'age',
                  'username', 'email', 'contact', 'profession', 'bloodGroup', 'image', 'permanent_address', 'current_address', 'workplace', 'created_at']


class SimplePersonSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(read_only=True)

    user = serializers.PrimaryKeyRelatedField(
        queryset=get_user_model().objects.all(),  # Queryset for user objects
        write_only=True,  # Exclude 'user' during serialization
    )

    class Meta:
        model = Person
        fields = ['id', 'user', 'first_name', 'last_name', 'age',
                  'username', 'email', 'contact', 'profession', 'bloodGroup', 'image', 'permanent_address', 'current_address', 'workplace', 'created_at']


class ProvinceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Province
        fields = ['id', 'name']


class DistrictSerializer(serializers.ModelSerializer):
    class Meta:
        model = District
        fields = ['id', 'name']
        
        
class MunicipalityQuickContactSerializer(serializers.ModelSerializer):

    class Meta:
        model = MunicipalityQuickContact
        fields = ['id', 'name', 'contact']


class MunicipalitySerializer(serializers.ModelSerializer):
    class Meta:
        model = Municipality
        fields = ['id', 'name']


class WardSerializer(serializers.ModelSerializer):
    municipality = serializers.CharField(max_length=50)

    class Meta:
        model = Ward
        fields = ['id', 'name', 'ward_number', 'municipality']


class GalleryImgeSerializer(serializers.Serializer):
    images = serializers.ListField(
        child=serializers.ImageField(), write_only=True)
    image = serializers.ImageField(read_only=True)

    def create(self, validated_data):
        gallery_id = self.context['gallery_id']

        images = [GalleryImage(
            gallery_id=gallery_id, image=image
        ) for image in validated_data['images']]

        # return PostImage.objects.create(post_id=post_id, **validated_data)
        return GalleryImage.objects.bulk_create(images)


class GallerySerializer(serializers.ModelSerializer):
    # images = GalleryImgeSerializer(many=True, read_only=True)
    class Meta:
        model = Gallery
        fields = ['id', 'title', 'thumbnail', 'created_at']


class BlogSerializer(serializers.ModelSerializer):
    # images = GalleryImgeSerializer(many=True, read_only=True)
    author = serializers.CharField()

    class Meta:
        model = Blog
        fields = ['id', 'title', 'thumbnail',
                  'content', 'author', 'created_at']


class UserReviewSerializer(serializers.ModelSerializer):
    image = serializers.SerializerMethodField()

    class Meta:
        model = UserReview
        fields = ['id', 'name',  'review', 'profession', 'image']

    def get_image(self, obj):
        return obj.person.image.url


# class EmergencyDonorSerializer(serializers.ModelSerializer):

#     class Meta:
#         model = EmergencyDonor
#         fields = ['id', 'name',  'age', 'contact', 'bloodGroup', 'profession_type']


class EmergencyDonorOrganizationMemberSerializer(serializers.ModelSerializer):

    class Meta:
        model = EmergencyDonorOrganizationMember
        fields = ['id', 'name', 'age', 'contact', 'bloodGroup','current_address','workplace','latest_received','latest_donation']
        

class EmergencyDonorOrganizationQuickContactSerializer(serializers.ModelSerializer):

    class Meta:
        model = EmergencyDonorOrganizationQuickContact
        fields = ['id', 'name', 'contact']


class EmergencyDonorOrganizationSerializer(serializers.ModelSerializer):

    class Meta:
        model = EmergencyDonorOrganization
        fields = ['id', 'profession']


class AssociateVolunteerMemberSerializer(serializers.ModelSerializer):
    permanent_address = serializers.CharField(write_only=True)
    class Meta:
        model = AssociateVolunteerMember
        fields = ['id', 'name', 'age', 'contact', 'bloodGroup',
                   'permanent_address', 'current_address', 'workplace','latest_received','latest_donation']
        
class AssociateVolunteerQickConactSerializer(serializers.ModelSerializer):

    class Meta:
        model = AssociateVolunteerQuickContact
        fields = ['id', 'name', 'contact']


class AssociateVolunteerSerializer(serializers.ModelSerializer):

    class Meta:
        model = AssociateVolunteer
        fields = ['id', 'name',  'address', 'contact']


class AssociateHospitalMemberSerializer(serializers.ModelSerializer):
    permanent_address = serializers.CharField(write_only=True)
    class Meta:
        model = AssociateHospitalMember
        fields = ['id', 'name', 'age', 'contact', 'bloodGroup',
                  'profession', 'permanent_address', 'current_address', 'workplace','latest_received','latest_donation']


class AssociateHospitalQuickContactSerializer(serializers.ModelSerializer):

    class Meta:
        model = AssociateHospitalQuickContact
        fields = ['id', 'name', 'contact']


class AssociateHospitalSerializer(serializers.ModelSerializer):

    class Meta:
        model = AssociateHospital
        fields = ['id', 'name',  'address', 'contact']


class BloodDonorRequestSerializer(serializers.ModelSerializer):

    class Meta:
        model = BloodDonorRequest
        fields = ['id', 'user', 'name',  'dob', 'contact', 'tole', 'bloodGroup',
                  'profession', 'workplace', 'province', 'district', 'municipality', 'ward', 'current_address', 'image']


class VolunteerRequestSerializer(serializers.ModelSerializer):

    class Meta:
        model = VolunteerRequest
        fields = ['id', 'user', 'name',  'dob', 'contact', 'tole', 'bloodGroup',
                  'profession', 'workplace', 'province', 'district', 'municipality', 'ward', 'current_address', 'image']


class SponsorSerializer(serializers.ModelSerializer):

    class Meta:
        model = Sponsor
        fields = ['id', 'name', 'image', 'link']


class ContactUsSerializer(serializers.ModelSerializer):
    class Meta:
        model = ContactUs
        fields = ['id', 'name', 'email', 'phone', 'message']