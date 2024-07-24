from django.shortcuts import render
from django.http import HttpRequest
from .models import News
from .utils import nav_link


def dashboard_view(request: HttpRequest):
    template_name = 'dashboard.html'
    extra_context = {
        'title': 'Dashboard',
        'news': News.objects.all(),
        'list_item': nav_link(),
        'list_program': [
            {
                'name': 'ekonomi',
                'icon': 'fa-solid fa-scale-balanced'
            },
            {
                'name': 'perbankan',
                'icon': 'fa-solid fa-landmark'
            },
            {
                'name': 'pendidikan agama islam',
                'icon': 'fa-solid fa-book-quran'
            },
            {
                'name': 'manajemen pendidikan islam',
                'icon': 'fa-solid fa-mosque'
            },
            {
                'name': 'bahasa inggris',
                'icon': 'fa-solid fa-globe'
            },
            {
                'name': 'bahasa indonesia',
                'icon': 'fa-solid fa-earth-americas'
            }
        ]
    }
    return render(request, template_name, extra_context)


def profile_view(request: HttpRequest):
    template_name = 'profile.html'
    extra_context = {
        'title': 'Profile',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


def akademik_view(request: HttpRequest):
    template_name = 'akademik.html'
    extra_context = {
        'title': 'Akademik',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


def penelitian_view(request: HttpRequest):
    template_name = 'penelitian.html'
    extra_context = {
        'title': 'Penelitian',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


def pengabdian_view(request: HttpRequest):
    template_name = 'pengabdian.html'
    extra_context = {
        'title': 'Pengabdian',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


def mahasiswa_view(request: HttpRequest):
    template_name = 'mahasiswa.html'
    extra_context = {
        'title': 'Mahasiswa',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


def content_news_view(request: HttpRequest, id: int):
    template_name = 'content_news.html'
    extra_context = {
        'title': 'Content Berita',
        'list_item': nav_link(),
        'content': News.objects.get(id=id)
    }
    return render(request, template_name, extra_context)
