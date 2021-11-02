from django.db import models
from django.db.models.deletion import CASCADE
from category.models import Category

class Blogs(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField()
    content = models.TextField()
    category = models.ForeignKey(Category,on_delete=CASCADE)
    author = models.CharField(max_length=255)
    views = models.IntegerField(default=0)
    coverImage = models.ImageField(upload_to="blogsImg",blank=True)
    createdDate = models.DateTimeField(auto_now_add=True)
    updateDate = models.DateTimeField(auto_now=True)


    def __str__(self):
        return self.name



