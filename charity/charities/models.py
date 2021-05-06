from accounts.models import User
from django.db import models


# Create your models here.

class Benefactor(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)


class Charity(models.Model):
    chairty_owner = models.OneToOneField(Benefactor, on_delete=models.CASCADE)


class Task(models.Model):
    benefactor = models.ForeignKey(Benefactor, on_delete=models.SET_NULL, null=True)
    charity = models.ForeignKey(Charity, on_delete=models.CASCADE)
