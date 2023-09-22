from django_filters import rest_framework as filters
from .models import Person
from .serializers import PersonSerializer


class PersonFilter(filters.FilterSet):
    municipality_name = filters.CharFilter(
        field_name='permanent_address__municipality__name',
        lookup_expr='exact'
    )
    ward_number = filters.CharFilter(
        field_name='permanent_address__ward__ward_number',
        lookup_expr='exact'
    )

    class Meta:
        model = Person
        fields = []


# class PersonViewSet(viewsets.ModelViewSet):
#     queryset = Person.objects.select_related('user', 'permanent_address').all()
#     serializer_class = PersonSerializer
#     filter_backends = [DjangoFilterBackend]
#     filterset_class = PersonFilter
