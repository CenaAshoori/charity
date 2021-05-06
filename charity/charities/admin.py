from django.contrib import admin
from .models import Benefactor, Charity, Task


# Register your models here.

@admin.register(Benefactor)
class BenefactorAdmin(admin.ModelAdmin):
    pass


@admin.register(Charity)
class CharityAdmin(admin.ModelAdmin):
    pass

@admin.register(Task)
class TaskAdmin(admin.ModelAdmin):
    pass
