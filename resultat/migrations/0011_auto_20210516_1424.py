# Generated by Django 3.1.6 on 2021-05-16 14:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('resultat', '0010_auto_20210516_1423'),
    ]

    operations = [
        migrations.AlterField(
            model_name='resultat',
            name='imagePdf',
            field=models.FileField(blank=True, null=True, upload_to='staticfiles/assets/images/results/'),
        ),
    ]
