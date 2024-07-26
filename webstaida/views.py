from django.shortcuts import render
from django.views.decorators.cache import never_cache
from django.http import HttpRequest
from .models import News
from .utils import nav_link
import os
from .settings import BASE_DIR


@never_cache
def dashboard_view(request: HttpRequest):
    data_news = News.objects.all()
    folder_news = os.path.join(BASE_DIR, 'static/img/news')
    db_list_files = [
        news.image.name.split('/')[-1] for news in data_news if news.image
    ]
    local_list_files = os.listdir(folder_news)
    files_to_delete = [f for f in local_list_files if f not in db_list_files]
    for file_name in files_to_delete:
        file_path = os.path.join(folder_news, file_name)
        if os.path.isfile(file_path):
            os.remove(file_path)
    template_name = 'dashboard.html'
    extra_context = {
        'title': 'Dashboard',
        'news': data_news,
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


@never_cache
def profile_view(request: HttpRequest):
    template_name = 'profile.html'
    extra_context = {
        'title': 'Profile',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


@never_cache
def akademik_view(request: HttpRequest):
    template_name = 'akademik.html'
    extra_context = {
        'title': 'Akademik',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


@never_cache
def penelitian_view(request: HttpRequest):
    template_name = 'penelitian.html'
    extra_context = {
        'title': 'Penelitian',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


@never_cache
def pengabdian_view(request: HttpRequest):
    template_name = 'pengabdian.html'
    extra_context = {
        'title': 'Pengabdian',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


@never_cache
def mahasiswa_view(request: HttpRequest):
    template_name = 'mahasiswa.html'
    extra_context = {
        'title': 'Mahasiswa',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


@never_cache
def content_news_view(request: HttpRequest, id: int):
    template_name = 'content_news.html'
    extra_context = {
        'title': 'Content Berita',
        'list_item': nav_link(),
        'content': News.objects.get(id=id)
    }
    return render(request, template_name, extra_context)


@never_cache
def research_view(request: HttpRequest):
    template_name = 'research.html'
    extra_context = {
        'title': 'Research',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


@never_cache
def journal_view(request: HttpRequest):
    template_name = 'journal.html'
    extra_context = {
        'title': 'Journal',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)


@never_cache
def repository_view(request: HttpRequest):
    template_name = 'repository.html'
    extra_context = {
        'title': 'Repository',
        'list_item': nav_link()
    }
    return render(request, template_name, extra_context)
