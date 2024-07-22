import os
import uuid


def get_image_filename(instance, filename):
    ext = filename.split('.')[-1]
    filename = f"{uuid.uuid4()}.{ext}"
    return os.path.join('static/img/news/', filename)


def nav_link():
    return [
        {'name': 'Home', 'href': 'landing_page'},
        {'name': 'Profile', 'href': 'profile'},
        {'name': 'Akademik', 'href': 'akademik'},
        {'name': 'Penelitian', 'href': 'penelitian'},
        {'name': 'Pengabdian', 'href': 'pengabdian'},
        {'name': 'Mahasiswa', 'href': 'mahasiswa'},
    ]
