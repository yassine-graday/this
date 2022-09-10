from django.apps import AppConfig
from rest_framework import default_app_config


class TestAppConfig(AppConfig):

    name = 'test'
    label = 'test'
    verbose_name = 'Test'

    def ready(self):
        import test.signals

default_app_config = 'test.TestAppConfig'