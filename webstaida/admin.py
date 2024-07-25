from django.contrib import admin
from .models import News


class NewsAdmin(admin.ModelAdmin):
    readonly_fields = ['created_at', 'updated_at']


admin.site.register(News, NewsAdmin)
