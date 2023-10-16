


from rest_framework_nested import routers

from . import views

router = routers.DefaultRouter()



router.register('people', views.PersonViewSet , basename='people')
router.register('provinces', views.ProvinceViewSet, basename='provinces')
router.register('districts', views.DistrictViewSet, basename='districts')
router.register('municipalities', views.MunicipalityViewSet , basename='municipalities')
router.register('wards', views.WardViewSet , basename='wards')
router.register('blogs', views.BlogViewSet , basename='blogs')
router.register('galleries', views.GalleryViewSet , basename='galleries')
router.register('reviews', views.UserReviewViewSet , basename='reviews')
router.register('emergency-donors', views.EmergencyDonorOrganizationViewSet , basename='emergency-donors')
router.register('associates', views.AssociateVolunteerViewSet , basename='associates')
router.register('associate-hospitals', views.AssociateHospitalViewSet , basename='associate-hospitals')
router.register('donor-requests', views.BloodDonorRequestViewSet , basename='donor-requests')
router.register('volunteer-requests', views.VolunteerRequestViewSet , basename='volunteer-requests')
router.register('sponsors', views.SponsorViewSet , basename='sponsors')

gallery_router = routers.NestedDefaultRouter(router, 'galleries', lookup='gallery')
emergency_router = routers.NestedDefaultRouter(router, 'emergency-donors', lookup='emergency')
associate_router = routers.NestedDefaultRouter(router, 'associates', lookup='associate')
hospital_router = routers.NestedDefaultRouter(router, 'associate-hospitals', lookup='hospital')
municipality_router = routers.NestedDefaultRouter(router, 'municipalities', lookup='municipality')



gallery_router.register('images', views.GalleryImageViewSet, basename='gallery-images')
emergency_router.register('members', views.EmergencyDonorOrganizationMemberViewSet, basename='emergency-members')
associate_router.register('members', views.AssociateVolunteerMemberViewSet, basename='associate-members')
hospital_router.register('members', views.AssociateHospitalMemberViewSet, basename='hospital-members')
associate_router.register('quick-contacts', views.AssociateVolunteerQuickContactViewSet, basename='associate-quick-contacts')
hospital_router.register('quick-contacts', views.AssociateHospitalQuickContactViewSet, basename='hospital-quick-contacts')
emergency_router.register('quick-contacts', views.EmergencyDonorOrganizationQuickContactViewSet, basename='emergency-quick-contacts')
municipality_router.register('quick-contacts', views.MunicipalityQuickContactViewSet, basename='municipality-quick-contacts')



urlpatterns = router.urls + gallery_router.urls + emergency_router.urls +  associate_router.urls + hospital_router.urls + municipality_router.urls
