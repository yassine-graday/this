from django.contrib import admin
from test.models import Test,TypeTest,Page,Element,ElementParam,TypeElement,Question,Resultparam
# Register your models here.


class TestAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Test._meta.fields]    
    filter_horizontal = ("elements",)


class ResultparamAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Resultparam._meta.fields]    
    

class TypeTestAdmin(admin.ModelAdmin):
    list_display = [field.name for field in TypeTest._meta.fields]


class PageAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Page._meta.fields]



class ElementAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Element._meta.fields]
    filter_horizontal=("questions",)



class TypeElementAdmin(admin.ModelAdmin):
    list_display = [field.name for field in TypeElement._meta.fields]
    filter_horizontal = ("param",)




class ElementParamAdmin(admin.ModelAdmin):
    list_display = [field.name for field in ElementParam._meta.fields]




class QuestionAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Question._meta.fields]
    filter_horizontal = ("params",)
    












admin.site.register(Question, QuestionAdmin)
admin.site.register(Test, TestAdmin)
admin.site.register(TypeTest, TypeTestAdmin)
admin.site.register(Page, PageAdmin)
admin.site.register(Element, ElementAdmin)
admin.site.register(ElementParam, ElementParamAdmin)
admin.site.register(TypeElement, TypeElementAdmin)
admin.site.register(Resultparam, ResultparamAdmin)
