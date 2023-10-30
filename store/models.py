
import datetime
from datetime import date

from django.conf import settings
from django.db import models
from smart_selects.db_fields import ChainedForeignKey, ChainedManyToManyField

from store.data import (DISTRICTS_CHOICES, MUNICIPALITY_VDC_CHOICES,
                        PROVIENCES_CHOICES, WARD_NO_CHOICES)

# Create your models here.


class Province(models.Model):
    Provience_1 = 'Koshi Pradesh'
    Provience_2 = 'Madesh Pradesh'
    Provience_3 = 'Bagmati Pradesh'
    Provience_4 = 'Gandaki Pradesh'
    Provience_5 = 'Lumbini Pradesh'
    Provience_6 = 'Karnali Pradesh'
    Provience_7 = 'Sudurpashchim Pradesh'
    PROVIENCES_CHOICES = [
        (Provience_1, 'Koshi Pradesh'),
        (Provience_2, 'Madesh Pradesh'),
        (Provience_3, 'Bagmati Pradesh'),
        (Provience_4, 'Gandaki Pradesh'),
        (Provience_5, 'Lumbini Pradesh'),
        (Provience_6, 'Karnali Pradesh'),
        (Provience_7,'Sudurpashchim Pradesh'),
    ]
    name = models.CharField(
        max_length=50, choices=PROVIENCES_CHOICES, null=False, blank=False, unique=True)

    def __str__(self):
        return self.name


class District(models.Model):

    # province = models.ForeignKey(Province, on_delete=models.CASCADE, related_name='districts')
    province = models.ForeignKey(Province, on_delete=models.CASCADE)
    name = models.CharField(
        max_length=100, choices=DISTRICTS_CHOICES, null=False, blank=False)

    class Meta:
        unique_together = [['province', 'name']]

    def __str__(self):
        return self.name


class Municipality(models.Model):
    district = models.ForeignKey(District, on_delete=models.PROTECT)
    name = models.CharField(
        max_length=50, choices=MUNICIPALITY_VDC_CHOICES, null=False, blank=False)

    class Meta:
        unique_together = [['district', 'name']]

    def __str__(self):
        return self.name

class MunicipalityQuickContact(models.Model):
    organization = models.ForeignKey(
        Municipality, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    contact = models.CharField(max_length=10, null=True, blank=True)
    

    def __str__(self):
        return f"{self.name}: {self.contact}"




class Ward(models.Model):
    municipality = models.ForeignKey(Municipality, on_delete=models.PROTECT)
    name = models.CharField(
        max_length=50, null=True, blank=True)
    # ward_number = models.IntegerField(null=False, blank=False)
    ward_number = models.CharField(
        max_length=50, choices=WARD_NO_CHOICES, unique=True, null=False, blank=False)
    

    def __str__(self):
        return self.name or self.ward_number
    
    class Meta:
        unique_together = (('name', 'ward_number'))


class Address(models.Model):
    province = models.ForeignKey(Province, on_delete=models.CASCADE)
    # district = models.ForeignKey(District, on_delete=models.CASCADE)
    district = ChainedForeignKey(District, chained_field="province", chained_model_field="province", show_all=False, auto_choose=True)
    municipality = ChainedForeignKey(Municipality, chained_field="district", chained_model_field="district", show_all=False, auto_choose=True)
    # municipality = models.ForeignKey(Municipality, on_delete=models.CASCADE)
    ward = ChainedForeignKey(Ward, chained_field="municipality", chained_model_field="municipality", show_all=False, auto_choose=True)
    # ward = models.ForeignKey(Ward, on_delete=models.PROTECT)
    tole = models.CharField(max_length=150)
    house_number = models.CharField(max_length=20)
    local_name = models.CharField(max_length=255, null=True, blank=True)

    def __str__(self):
        return f"{self.house_number}, {self.tole}, {self.ward}, {self.municipality}, {self.district}, {self.province}"

class Person(models.Model):
    user = models.OneToOneField(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    # age = models.PositiveIntegerField()
    dob = models.DateTimeField()
    contact = models.CharField(max_length=10, null=True, blank=True)
    permanent_address = models.ForeignKey(
        Address, on_delete=models.PROTECT, related_name='permanent_address')
    # current_address = models.ForeignKey(
    #     Address, on_delete=models.PROTECT, related_name='current_address')
    current_address = models.CharField(
        max_length=100, null=True, blank=True
    )
    # workplace = models.ForeignKey(
    #     Address, on_delete=models.PROTECT, related_name='workplace_address')
    workplace = models.CharField(
        max_length=100, null=True, blank=True
    )
    bloodGroup = models.CharField(max_length=5)
    profession = models.CharField(max_length=255, blank=True, null=True)
    image = models.ImageField(
        upload_to='person/images', null=True, blank=True)
    latest_donation = models.DateField(null=True, blank=True)
    latest_received = models.DateField(null=True, blank=True)

    def first_name(self):
        return self.user.first_name

    def last_name(self):
        return self.user.last_name

    def email(self):
        return self.user.email

    def username(self):
        return self.user.username

    def created_at(self):
        return self.user.date_joined

    # def age(self):
    #     # current_time = timezone.now()
    #     current_time = datetime.datetime.now()
    #     age = current_time.year - birth_date.year - \
    #         ((current_time.month, current_time.day)
    #          < (birth_date.month, birth_date.day))
    #     return age
    def age(self):
        # current_time = timezone.now()
        current_time = datetime.datetime.now()
        age = current_time.year - self.dob.year - \
            ((current_time.month, current_time.day)
             < (self.dob.month, self.dob.day))
        return age

    def __str__(self):
        # return f"{self.user.id} => {self.user.first_name} {self.user.last_name}"
        return f"{self.user.first_name} {self.user.last_name}"


class Gallery(models.Model):
    title = models.CharField(max_length=100)
    thumbnail = models.ImageField(upload_to='gallery/thumbnails')
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Gallery'
        verbose_name_plural = 'Galleries'


class GalleryImage(models.Model):
    gallery = models.ForeignKey(
        Gallery, on_delete=models.CASCADE, related_name='images')
    image = models.ImageField(upload_to='gallery/images')


class Blog(models.Model):
    title = models.CharField(max_length=255)
    content = models.TextField()
    thumbnail = models.ImageField(upload_to='blog/thumbnails')
    author = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.PROTECT)
    created_at = models.DateTimeField(auto_now_add=True)


class UserReview(models.Model):
    person = models.ForeignKey(Person, on_delete=models.CASCADE)
    review = models.CharField(max_length=200)

    def profession(self):
        return self.person.profession

    def name(self):
        return self.person.user.first_name + " " + self.person.user.last_name


# class EmergencyDonor(models.Model):
#     PROFESSION_TYPE_ARMY = 'Army'
#     PROFESSION_TYPE_POLICE = 'Police'
#     PROFESSION_TYPE_APF = 'APF'
#     PROFESSION_TYPE_GENERALPUBLIC = 'General Public'
#     PROFESSION_TYPE_CHOICES = [
#             (PROFESSION_TYPE_ARMY, 'Army'),
#             (PROFESSION_TYPE_POLICE, 'Police'),
#             (PROFESSION_TYPE_APF, 'APF'),
#             (PROFESSION_TYPE_GENERALPUBLIC, 'General Public'),

#     ]
#     name = models.CharField(max_length=255)
#     age = models.PositiveIntegerField()
#     contact = models.CharField(max_length=10)
#     bloodGroup = models.CharField(max_length=5)
#     profession_type = models.CharField(max_length=50, choices=PROFESSION_TYPE_CHOICES)

class EmergencyDonorOrganization(models.Model):
    profession = models.CharField(max_length=255)

class EmergencyDonorOrganizationQuickContact(models.Model):
    organization = models.ForeignKey(
        EmergencyDonorOrganization, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    contact = models.CharField(max_length=10, null=True, blank=True)
    

    def __str__(self):
        return f"{self.name}: {self.contact}"

class EmergencyDonorOrganizationMember(models.Model):
    organization = models.ForeignKey(
        EmergencyDonorOrganization, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    age = models.PositiveIntegerField()
    contact = models.CharField(max_length=10, null=True, blank=True)
    # permanent_address = models.CharField(max_length=255)
    current_address = models.CharField(max_length=255)
    workplace = models.CharField(max_length=255)
    bloodGroup = models.CharField(max_length=5)
    latest_donation = models.DateField(null=True, blank=True)
    latest_received = models.DateField(null=True, blank=True)

    def __str__(self):
        return f"{self.name}"


class AssociateVolunteer(models.Model):
    name = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    contact = models.CharField(max_length=10, null=True, blank=True)

class AssociateVolunteerQuickContact(models.Model):
    organization = models.ForeignKey(
        AssociateVolunteer, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    contact = models.CharField(max_length=10, null=True, blank=True)
    

    def __str__(self):
        return f"{self.name}: {self.contact}"

class AssociateVolunteerMember(models.Model):
    organization = models.ForeignKey(
        AssociateVolunteer, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    age = models.PositiveIntegerField()
    contact = models.CharField(max_length=10, null=True, blank=True)
    permanent_address = models.CharField(max_length=255)
    current_address = models.CharField(max_length=255)
    workplace = models.CharField(max_length=255)
    bloodGroup = models.CharField(max_length=5)
    latest_donation = models.DateField(null=True, blank=True)
    latest_received = models.DateField(null=True, blank=True)
    

    def __str__(self):
        return f"{self.name}"


class AssociateHospital(models.Model):
    name = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    contact = models.CharField(max_length=10, null=True, blank=True)

class AssociateHospitalQuickContact(models.Model):
    organization = models.ForeignKey(
        AssociateHospital, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    contact = models.CharField(max_length=10, null=True, blank=True)
    

    def __str__(self):
        return f"{self.name}: {self.contact}"


class AssociateHospitalMember(models.Model):
    hospital = models.ForeignKey(AssociateHospital, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    age = models.PositiveIntegerField()
    contact = models.CharField(max_length=10, null=True, blank=True)
    permanent_address = models.CharField(max_length=255)
    current_address = models.CharField(max_length=255)
    workplace = models.CharField(max_length=255)
    bloodGroup = models.CharField(max_length=5)
    profession = models.CharField(max_length=255, blank=True, null=True)
    latest_donation = models.DateField(null=True, blank=True)
    latest_received = models.DateField(null=True, blank=True)
    

    def __str__(self):
        return f"{self.name}"




class BloodDonorRequest(models.Model):
    user = models.OneToOneField(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    dob = models.DateTimeField()
    contact = models.CharField(max_length=10, null=True, blank=True)
    tole = models.CharField(max_length=255)
    bloodGroup = models.CharField(max_length=5)
    profession = models.CharField(max_length=255, blank=True, null=True)
    workplace = models.CharField(max_length=255, blank=True, null=True)
    province = models.ForeignKey(Province, on_delete=models.CASCADE)
    district = models.ForeignKey(District, on_delete=models.CASCADE)
    municipality = models.ForeignKey(Municipality, on_delete=models.CASCADE)
    ward = models.ForeignKey(Ward, on_delete=models.CASCADE)
    
    current_address = models.CharField(
        max_length=100, null=True, blank=True
    )
    image = models.ImageField(
        upload_to='donerrequest/images', null=True, blank=True)


class VolunteerRequest(models.Model):
    user = models.OneToOneField(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    dob = models.DateTimeField()
    contact = models.CharField(max_length=10, null=True, blank=True)
    tole = models.CharField(max_length=255)
    bloodGroup = models.CharField(max_length=5)
    profession = models.CharField(max_length=255, blank=True, null=True)
    workplace = models.CharField(max_length=255, blank=True, null=True)
    province = models.ForeignKey(Province, on_delete=models.CASCADE)
    district = models.ForeignKey(District, on_delete=models.CASCADE)
    municipality = models.ForeignKey(Municipality, on_delete=models.CASCADE)
    ward = models.ForeignKey(Ward, on_delete=models.CASCADE)
    current_address = models.CharField(
        max_length=100, null=True, blank=True
    )
    image = models.ImageField(
        upload_to='volunteerrequest/images', null=True, blank=True)


class Sponsor(models.Model):
    name = models.CharField(max_length=255)
    link = models.CharField(max_length=255, null=True, blank=True)
    image = models.ImageField(
        upload_to='sponsors/images', null=True, blank=True)
