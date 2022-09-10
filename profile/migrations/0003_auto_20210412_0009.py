# Generated by Django 3.1.6 on 2021-04-12 00:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('profile', '0002_auto_20210330_0240'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='fullName',
            field=models.CharField(blank=True, max_length=256, null=True),
        ),
        migrations.AlterField(
            model_name='profile',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='staticfiles/assets/image'),
        ),
    ]