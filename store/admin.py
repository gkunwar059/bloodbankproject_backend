
import sys

from django import forms
from django.contrib import admin
from django.http import HttpResponseRedirect
from django.utils.html import format_html

from store.models import (Address, AssociateHospital, AssociateHospitalMember,
                          AssociateVolunteer, AssociateVolunteerMember, Blog,
                          BloodDonorRequest, District,
                          EmergencyDonorOrganization,
                          EmergencyDonorOrganizationMember, Gallery,
                          GalleryImage, Municipality, Person, Province,
                          Sponsor, UserReview, VolunteerRequest, Ward)

# from store.models import  PermanentAddress, Person, TemporaryAddress, WorkplaceAddress

# Register your models here.


# class AddressAdminInline(admin.StackedInline):
#     model = Address
#     max_num = 1

# class PermanentAddressAdminInline(admin.StackedInline):
#     model = PermanentAddress
#     max_num = 1

# class TemporaryAddressAdminInline(admin.StackedInline):
#     model = TemporaryAddress
#     max_num = 1
#     # search_fields = ['province', 'district']


# class WorkplaceAdminInline(admin.StackedInline):
#     model = WorkplaceAddress
#     max_num = 1


@admin.register(Person)
class PersonAdmin(admin.ModelAdmin):
    list_display = ['user_id', 'email', 'first_name',
                    'last_name',]
    autocomplete_fields = ['user']
    search_fields = ['user__first_name', 'user__last_name']
    # inlines = [PermanentAddressAdminInline, TemporaryAddressAdminInline, WorkplaceAdminInline]


@admin.register(Address)
class AddressAdmin(admin.ModelAdmin):
    list_display = ['province', 'district', 'municipality',
                    'ward', 'tole', 'house_number']
    # list_display = [ 'municipality',
    #                 'ward', 'tole', 'house_number']
    # autocomplete_fields = ['province', 'district', 'municipality']
    autocomplete_fields = ['province', 'district', 'municipality']
    # raw_id_fields=['district']
    # filter_horizontal=['district']
    # search_fields = ['user__first_name', 'user__last_name']
    search_fields = ['province', 'district', 'municipality']
    
# @admin.register(Address)
# class AddressAdmin(admin.ModelAdmin):
#     # list_display = ['province', 'district', 'municipality',
#     #                 'ward', 'tole', 'house_number']
#     list_display = ['province', 'municipality', 'ward', 'tole', 'house_number']
#     autocomplete_fields = ['province', 'district', 'municipality']
#     search_fields = ['province', 'district', 'municipality']
#     # search_fields = ['province', 'district', 'municipality']
    # filter_horizontal = ['district']
    # raw_id_fields = ['district']
    
#     # def formfield_for_foreignkey(self, db_field, request, **kwargs):
#     #     if db_field.name == "district":
#     #         if "province" in request.GET:
#     #             kwargs["queryset"] = District.objects.filter(province_id=request.GET.get("province"))
#     #         else:
#     #             kwargs["queryset"] = District.objects.none()
#     #     return super().formfield_for_foreignkey(db_field, request, **kwargs)



@admin.register(Province)
class ProvinceAdmin(admin.ModelAdmin):
    list_display = ['name']
    search_fields = ['name']


@admin.register(District)
class DistrictAdmin(admin.ModelAdmin):
    list_display = ['name']
    search_fields = ['name']


@admin.register(Municipality)
class MunicipalityAdmin(admin.ModelAdmin):
    list_display = ['name']
    search_fields = ['name']


@admin.register(Ward)
class WardAdmin(admin.ModelAdmin):
    list_display = ['name', 'ward_number']
    search_fields = ['name']


class GalleryImageAdminInline(admin.StackedInline):
    model = GalleryImage
    extra = 1


@admin.register(Gallery)
class GalleryAdmin(admin.ModelAdmin):
    list_display = ['title', 'thumbnailimg']
    inlines = [GalleryImageAdminInline]

    def thumbnailimg(self, instance):
        if instance.thumbnail.name != '':
            return format_html(f'<img src= "{instance.thumbnail.url}" class="thumbnail"/>')
        return ''

    class Media:
        css = {
            'all': ['store/styles.css']
        }


@admin.register(Blog)
class BlogAdmin(admin.ModelAdmin):
    list_display = ['title', 'author']


@admin.register(UserReview)
class UserReviewAdmin(admin.ModelAdmin):
    list_display = ['person', 'review']
    list_select_related = ['person']


# @admin.register(EmergencyDonor)
# class EmergencyDonorAdmin(admin.ModelAdmin):
#     list_display = ['name', 'age', 'contact', 'bloodGroup', 'profession_type']


class EmergencyDonorOrganizationMemberAdminInline(admin.TabularInline):
    model = EmergencyDonorOrganizationMember
    extra = 0


@admin.register(EmergencyDonorOrganization)
class EmergencyDonorOrganizationAdmin(admin.ModelAdmin):
    list_display = ['profession',]
    inlines = [EmergencyDonorOrganizationMemberAdminInline]


class AssociateVolunteerMemberAdminInline(admin.TabularInline):
    model = AssociateVolunteerMember
    extra = 0


@admin.register(AssociateVolunteer)
class AssociateVolunteerAdmin(admin.ModelAdmin):
    list_display = ['name', 'address', 'contact']
    inlines = [AssociateVolunteerMemberAdminInline]


class AssociateHospitalMemberAdminInline(admin.TabularInline):
    model = AssociateHospitalMember
    extra = 0


@admin.register(AssociateHospital)
class AssociateVolunteerAdmin(admin.ModelAdmin):
    list_display = ['name', 'address', 'contact']
    inlines = [AssociateHospitalMemberAdminInline]


@admin.register(BloodDonorRequest)
class BloodDonorRequestAdmin(admin.ModelAdmin):
    list_display = ['id', 'name',  'dob', 'contact', 'tole', 'bloodGroup',
                    'profession', 'province', 'district', 'municipality', 'ward', 'image']

    def response_change(self, request, obj):
        if "_accept-request" in request.POST:

            person = Person.objects.filter(user=obj.user).first()

            if person is None:
                address = Address.objects.create(province=obj.province, municipality=obj.municipality,
                                                 district=obj.district, ward=obj.ward, tole=obj.tole, house_number=obj.tole)
                person = Person.objects.create(user=obj.user, dob=obj.dob, contact=obj.contact, permanent_address=address,
                                               current_address=address, workplace=address, bloodGroup=obj.bloodGroup, profession=obj.profession, image=obj.image)

            person.user.is_donor = True
            person.user.save()
            obj.delete()
            self.message_user(request, "You have accepted the request")
            return HttpResponseRedirect(".")

        if "_reject-request" in request.POST:
            obj.delete()
            self.message_user(request, "You have rejected the request")
            return HttpResponseRedirect(".")
        return super().response_change(request, obj)


@admin.register(VolunteerRequest)
class BloodDonorRequestAdmin(admin.ModelAdmin):
    list_display = ['id', 'name',  'dob', 'contact', 'tole', 'bloodGroup',
                    'profession', 'province', 'district', 'municipality', 'ward', 'image']

    def response_change(self, request, obj):
        if "_accept-request" in request.POST:

            person = Person.objects.filter(user=obj.user).first()

            if person is None:
                address = Address.objects.create(province=obj.province, municipality=obj.municipality,
                                                 district=obj.district, ward=obj.ward, tole=obj.tole, house_number=obj.tole)
                person = Person.objects.create(user=obj.user, dob=obj.dob, contact=obj.contact, permanent_address=address,
                                               current_address=address, workplace=address, bloodGroup=obj.bloodGroup, profession=obj.profession, image=obj.image)

            person.user.is_volunteer = True
            person.user.save()
            obj.delete()
            self.message_user(request, "You have accepted the request")
            return HttpResponseRedirect(".")

        if "_reject-request" in request.POST:
            obj.delete()
            self.message_user(request, "You have rejected the request")
            return HttpResponseRedirect(".")
        return super().response_change(request, obj)


@admin.register(Sponsor)
class SponsorAdmin(admin.ModelAdmin):
    # list_display = ['name', 'link', 'image']
    list_display = ['name', 'link']
