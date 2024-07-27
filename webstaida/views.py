from django.shortcuts import render
from django.views.decorators.cache import never_cache
from django.http import HttpRequest
from .models import News, Program, ProgramDetail, Journal
from .utils import nav_link, file_management


@never_cache
def dashboard_view(request: HttpRequest):
    data_news = News.objects.all()
    data_program = Program.objects.all()
    file_management(data_news, 'news')
    template_name = 'dashboard.html'
    extra_context = {
        'title': 'Dashboard',
        'news': data_news,
        'list_item': nav_link(),
        'list_program': data_program
    }
    return render(request, template_name, extra_context)


@never_cache
def program_view(request: HttpRequest, id: int):
    template_name = 'program.html'
    extra_context = {
        'title': 'Program',
        'list_item': nav_link(),
        'program': Program.objects.get(id=id),
        'program_detail': ProgramDetail.objects.filter(program_id=id)
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
def dosen_view(request: HttpRequest):
    template_name = 'dosen.html'
    extra_context = {
        'title': 'Dosen',
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
    data_journal = Journal.objects.all()
    file_management(data_journal, 'journal')
    template_name = 'journal.html'
    extra_context = {
        'title': 'Journal',
        'list_item': nav_link(),
        'journals': data_journal
    }
    return render(request, template_name, extra_context)


@never_cache
def journal_detail_view(request: HttpRequest, id: int):
    template_name = 'journal_detail.html'
    extra_context = {
        'title': 'Journal',
        'list_item': nav_link(),
        'content': Journal.objects.get(id=id)
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
