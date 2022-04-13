


TEMPLATES = [
    {..
        'DIRS': ['templates'],    
    }
}



STATIC_URL = 'static/'
STATIC_ROOT = BASE_DIR /'static'
STATICFILES_DIRS = [
     'grandpanier/static', 
]

==> python manage.py collectstatic
==> {% load static %}  => .html


python manage.py startapp category

ERRORS:
category.Category.cat_image: (fields.E210) Cannot use ImageField because Pillow is not installed.
	HINT: Get Pillow at https://pypi.org/project/Pillow/ or run command "python -m pip install Pillow".

python -m pip install Pillow


# Media files configuration  ==> settings.py
MEDIA_URL = '/media/'
MEDIA_ROOT = BASE_DIR / 'media'

                    urlpatterns = [
                        path('admin/', admin.site.urls),
                        path('', views.home, name='home'),
 ==> urls.py    ]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)   



python manage.py startapp category
Pour forcer Django à utiliser l''entité Categories au lieu de Categorys
class Meta:
        verbose_name = 'category'
        verbose_name_plural = 'categories'

Gestion des comptes
===================
python manage.py startapp accounts
    from django.contrib.auth.models import AbstractBaseUser, BaseUserManager

python manage.py startapp store 
Add 'store' in installed App in Settings.py 
(env) [hubert@phoenix grandpanier]$ mkdir templates/store
(env) [hubert@phoenix grandpanier]$ touch templates/store/store.html  

touch category/context_processors.py
TEMPLATES = [
    {   ...
        'category.context_processors.menu_links',
        ...
        ],
        },
    },
]


