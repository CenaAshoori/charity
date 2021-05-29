from django.urls import path
from .views import task_list_api , task_detail_api

urlpatterns = [
    path('all_task/', task_list_api),
    path('task/<int:id>/', task_detail_api),

]
