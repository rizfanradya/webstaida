"""
URL configuration for webstaida project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, re_path
from django.conf import settings
from django.views.static import serve
from django.views.generic import RedirectView
from django.urls import path
from .views import (
    landing_page_view,
    profile_view,
    akademik_view,
    penelitian_view,
    pengabdian_view,
    mahasiswa_view,
    content_news_view
)

urlpatterns = [
    path('favicon.ico', RedirectView.as_view(
        url='/static/img/favicon.ico')),
    re_path('static/(?P<path>.*)', serve,
            {'document_root': settings.STATIC_ROOT}),
    path('django/admin/', admin.site.urls),
    path('', landing_page_view, name='landing_page'),
    path('profile/', profile_view, name='profile'),
    path('akademik/', akademik_view, name='akademik'),
    path('penelitian/', penelitian_view, name='penelitian'),
    path('pengabdian/', pengabdian_view, name='pengabdian'),
    path('mahasiswa/', mahasiswa_view, name='mahasiswa'),
    path('news/<int:id>/', content_news_view, name='content_news'),
]
