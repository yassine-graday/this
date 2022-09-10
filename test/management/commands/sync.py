# coding=utf-8
from django.core.management.base import BaseCommand
from membre.models import Permission
from farasha_followup.constants import ALL_VIEWS


class Command(BaseCommand):

    def handle(self, *args, **options):
        list_id_checked = []
        for app in ALL_VIEWS:
            app_name = app['app_name']
            for view in app["views"]: #billy blanks
                view_name = view['view_name']
                for perm in view["perms"]:
                    perm_name = perm['perm_name']
                    perm_description = perm['description']
                    permission = Permission.objects.filter(type=perm_name, view=view_name, app=app_name).first()
                    if permission:
                        if permission.description != perm_description:
                            old_description = permission.description
                            permission.description = perm_description
                            permission.save()
                            print (u'Permission id:%s type:%s, view:%s, app:%s updated >>>> descrition %s > %s' % \
                                  (permission.pk, perm, view_name, app_name, old_description, perm_description))
                        else:
                            print (u'Permission id: %s type:%s, view:%s, app:%s no change' % \
                                  (permission.pk, perm, view_name, app_name))
                    else:
                        permission = Permission.objects.create(type=perm_name, view=view_name, app=app_name, description=perm_description)
                        print (u'Permission id:%s type:%s, view:%s, app:%s created' % (permission.pk, perm, view_name, app_name))
                    list_id_checked.append(permission.pk)
        for permission in Permission.objects.all():
            if not permission.pk in list_id_checked:
                print ("permission %s deleted" % permission.pk)
                permission.delete()



