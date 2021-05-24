from accounts.models import User
from django.db import models


# Create your models here.

class Benefactor(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username


class Charity(models.Model):
    name = models.CharField(max_length=64, null=True, blank=False)
    chairty_owner = models.OneToOneField(Benefactor, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class Task(models.Model):
    title = models.CharField(max_length=64,null=True ,blank=False)
    description = models.TextField(null=True,blank=True)
    benefactor = models.ForeignKey(Benefactor, on_delete=models.SET_NULL, null=True,blank=True)
    charity = models.ForeignKey(Charity, on_delete=models.CASCADE)

    def __str__(self):
        return self.title