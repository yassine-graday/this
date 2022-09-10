from django.contrib import admin
from authentication.models import User,UserNotification
# Register your models here.

class UserAdmin(admin.ModelAdmin):
    list_display = [field.name for field in User._meta.fields]

class UserNotificationAdmin(admin.ModelAdmin):
    list_display = [field.name for field in UserNotification._meta.fields]


admin.site.register(User, UserAdmin)
admin.site.register(UserNotification, UserNotificationAdmin)
