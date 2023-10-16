from django.contrib.auth.models import AbstractUser
from django.db import models


# Create your models here.
class User(AbstractUser):
    USERNAME_FIELD = 'email'
    email = models.EmailField(unique=True, null=False)
    is_superviser = models.BooleanField(default=False)
    is_staff = models.BooleanField(default=False)
    is_volunteer = models.BooleanField(default=False)
    is_donor = models.BooleanField(default=False)
    REQUIRED_FIELDS = ['username']


    def __str__(self) -> str:
        return self.first_name + ' ' + self.last_name


class OTP(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    new_password = models.CharField(max_length=255, null= True, blank=True)
    otp_code = models.CharField(max_length=4, null=True, blank=True)
