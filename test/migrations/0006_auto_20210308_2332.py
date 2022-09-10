# Generated by Django 3.1.6 on 2021-03-08 23:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('test', '0005_auto_20210308_1636'),
    ]

    operations = [
        migrations.RenameField(
            model_name='element',
            old_name='columns',
            new_name='questions',
        ),
        migrations.RemoveField(
            model_name='element',
            name='page',
        ),
        migrations.RemoveField(
            model_name='element',
            name='title',
        ),
        migrations.RemoveField(
            model_name='element',
            name='typelement',
        ),
        migrations.RemoveField(
            model_name='test',
            name='questions',
        ),
        migrations.RemoveField(
            model_name='test',
            name='typetest',
        ),
        migrations.AddField(
            model_name='test',
            name='elements',
            field=models.ManyToManyField(related_name='tests', to='test.Element'),
        ),
    ]