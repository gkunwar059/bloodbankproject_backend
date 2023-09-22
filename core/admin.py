from django.contrib import admin

from django.contrib.auth.admin import UserAdmin as BaseUserAdmin

from .models import User


# Register your models here.


@admin.register(User)
class UserAdmin(BaseUserAdmin):
    list_display = ["username", "email","is_superuser", "is_superviser", "is_staff", 'is_volunteer', 'is_donor']
    
     # Define custom fieldsets to show "is_superviser" under permissions tab
    def get_fieldsets(self, request, obj=None):
        fieldsets = super().get_fieldsets(request, obj)
        # Append the custom "is_superviser" field to the existing fieldsets
        fieldsets += (
            (
                "Permissions",
                {
                    "fields": ("is_superuser", "is_staff", "is_superviser", "is_volunteer", 'is_donor',),
                },
            ),
        )
        return fieldsets
    add_fieldsets = (
        (
            None,
            {
                "classes": ("wide",),
                "fields": ("username", "password1",  "password2", "email"),
            },
        ),
    )
