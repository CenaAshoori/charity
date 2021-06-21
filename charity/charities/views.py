from django.shortcuts import render
from rest_framework.permissions import AllowAny
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.generics import CreateAPIView, ListAPIView
from .models import Task
from .serializers import TaskSerializer


# Create your views here.

class TaskListApi(ListAPIView):
    permission_classes = (AllowAny,)
    queryset = Task.objects.all()
    serializer_class = TaskSerializer
task_list_api = TaskListApi().as_view()

class TaskDetailApi(APIView):
    def get(self , request ,id):
        task = Task.objects.get(pk = id)
        serializer = TaskSerializer(instance=task)
        return Response(data = serializer.data)
    def put(self,request,id ):
        pass
    #TODO ADD create charity and benefactor api 
task_detail_api = TaskDetailApi.as_view()       


