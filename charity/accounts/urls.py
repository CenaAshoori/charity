from django.urls import path
from rest_framework.authtoken.views import obtain_auth_token

urlpatterns = [
    path('auth',view=obtain_auth_token)
]
