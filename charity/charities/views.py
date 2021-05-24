from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.generics import CreateAPIView, ListAPIView
from .models import Task
from .serializers import TaskSerializer


# Create your views here.

class TaskListApi(ListAPIView):
    queryset = Task.objects.all()
    serializer_class = TaskSerializer


task_list_api = TaskListApi().as_view()
