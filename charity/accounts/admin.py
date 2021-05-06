from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as UA
from .models import User


# Register your models here.

@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    fieldsets = (
        (None, {'fields': ('username',)}),
        ('Personal Info', {'fields': ('gender', 'age',)})
    )
    list_filter = ('username', 'gender', 'age',)