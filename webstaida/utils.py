import os
import uuid
from .settings import BASE_DIR


def get_image_news_filename(instance, filename):
    return generate_filename(filename, 'news')


def get_image_journal_filename(instance, filename):
    return generate_filename(filename, 'journal')


def generate_filename(filename, path):
    ext = filename.split('.')[-1]
    filename = f"{uuid.uuid4()}.{ext}"
    return os.path.join(f'static/img/{path}/', filename)


def file_management(database, path):
    folder = os.path.join(BASE_DIR, f'static/img/{path}')
    db_list_files = [
        data.image.name.split('/')[-1] for data in database if data.image
    ]
    local_list_files = os.listdir(folder)
    files_to_delete = [f for f in local_list_files if f not in db_list_files]
    for file_name in files_to_delete:
        file_path = os.path.join(folder, file_name)
        if os.path.isfile(file_path):
            os.remove(file_path)


def nav_link():
    return [
        {'name': 'Akademik', 'href': 'akademik'},
        {'name': 'Penelitian', 'href': 'penelitian'},
        {'name': 'Pengabdian', 'href': 'pengabdian'},
        {'name': 'Mahasiswa', 'href': 'mahasiswa'},
    ]
