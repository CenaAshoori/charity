from django.urls import path
from .views import task_list_api

urlpatterns = [
    path('all_task/', task_list_api)
]
