from django.contrib import admin
from .models import News, Program, ProgramDetail


class NewsAdmin(admin.ModelAdmin):
    readonly_fields = ['created_at', 'updated_at']


admin.site.register(News, NewsAdmin)
admin.site.register(Program)
admin.site.register(ProgramDetail)
