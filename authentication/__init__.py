from django.apps import AppConfig
from rest_framework import default_app_config


class AuthenticationAppConfig(AppConfig):

    name = 'authentication'
    label = 'authentication'
    verbose_name = 'Authentication'

    def ready(self):
        import authentication.signals

default_app_config = 'authentication.AuthenticationAppConfig'