import os
from django.conf import settings
from django.core.files.storage import FileSystemStorage

class MyFileStorage(FileSystemStorage):
    
    # This method is actually defined in Storage
    def get_available_name(self, name ,max_length=None):
        if self.exists(name):
            os.remove(os.path.join(settings.MEDIA_ROOT, name))
        return name # simply returns the name passed
