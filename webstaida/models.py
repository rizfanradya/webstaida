from django.db import models
from django.dispatch import receiver
from django.db.models.signals import post_delete
from .utils import get_image_news_filename, get_image_journal_filename


class News(models.Model):
    title = models.CharField(max_length=255)
    sub_title = models.CharField(max_length=255)
    content = models.TextField()
    image = models.ImageField(upload_to=get_image_news_filename)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        try:
            this = News.objects.get(id=self.id)  # type: ignore
            if this.image != self.image:
                this.image.delete(save=False)
        except News.DoesNotExist:
            pass
        super(News, self).save(*args, **kwargs)


@receiver(post_delete, sender=News)
def delete_image_news(sender, instance, **kwargs):
    if instance.image:
        instance.image.delete(False)


class Journal(models.Model):
    title = models.CharField(max_length=255)
    description = models.TextField()
    image = models.ImageField(upload_to=get_image_journal_filename)

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        try:
            this = Journal.objects.get(id=self.id)  # type: ignore
            if this.image != self.image:
                this.image.delete(save=False)
        except Journal.DoesNotExist:
            pass
        super(Journal, self).save(*args, **kwargs)


@receiver(post_delete, sender=News)
def delete_image_journal(sender, instance, **kwargs):
    if instance.image:
        instance.image.delete(False)


class Program(models.Model):
    name = models.CharField(max_length=255)
    icon = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class ProgramDetail(models.Model):
    program = models.ForeignKey(Program, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    description = models.TextField()

    def __str__(self):
        return self.name
