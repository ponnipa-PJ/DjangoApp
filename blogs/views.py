from django.core import paginator
from django.shortcuts import render
from django.http import HttpResponse
from category.models import Category
from .models import Blogs
from django.core.paginator import Paginator, EmptyPage, InvalidPage

def base(request):
    categories = Category.objects.all()

    return render(request, "base.html", {'categories':categories})


def index(request):
    categories = Category.objects.all()
    blogs = Blogs.objects.all()
    lasted = Blogs.objects.all().order_by('pk')[:3]

    paginator = Paginator(blogs,6)
    try:
        page = int(request.GET.get('page','1'))
    except:
        page = 1

    try:
        perpage = paginator.page(page)
    except (EmptyPage, InvalidPage):
        perpage = paginator.page(paginator.num_pages)
        print(lasted)

    return render(request, "index.html", {'categories':categories,'blogs':perpage, 'lasted':lasted})

def blogContent(request, id):
    categories = Category.objects.all()
    blog = Blogs.objects.get(id=id)
    blog.views = blog.views+1
    blog.save()
    recommend = Blogs.objects.all().order_by('views')[:3]
    fav = Blogs.objects.all().order_by('-views')[:1]
    return render(request, 'blogContent.html', {'blog':blog, 'recommend':recommend, 'fav':fav, 'categories':categories})

def blogCategory(request, id):
    categories = Category.objects.all()
    blogs = Blogs.objects.filter(category_id=id)
    lasted = Blogs.objects.all().order_by('pk')[:3]

    paginator = Paginator(blogs,6)
    try:
        page = int(request.GET.get('page','1'))
    except:
        page = 1

    try:
        perpage = paginator.page(page)
    except (EmptyPage, InvalidPage):
        perpage = paginator.page(paginator.num_pages)
        print(lasted)

    return render(request, "index.html", {'categories':categories,'blogs':perpage, 'lasted':lasted})