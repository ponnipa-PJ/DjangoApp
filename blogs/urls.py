from django.urls import path
from .views import *

urlpatterns = [
    path('', index, name='home'),
    path('blog/<int:id>',blogContent, name='blogContent'),
    path('category/<int:id>',blogCategory, name='blogCategory')
]
