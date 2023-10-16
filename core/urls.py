
from django.urls import include, path
from rest_framework_nested import routers

from store.views import OTPConfirmView, OTPCreateView

from . import views

router = routers.DefaultRouter()

router.register('user', views.UserViewSet)

urlpatterns = [
    path('create-otp/', OTPCreateView.as_view(), name='create-otp'),
    path('confirm-otp/', OTPConfirmView.as_view(), name='confrim-otp'),
]

urlpatterns += router.urls

