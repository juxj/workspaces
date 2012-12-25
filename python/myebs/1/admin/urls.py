from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
	url(r'^$','admin.views.index'),
	url(r'^get_stocks/$','admin.views.get_stocks'),
	url(r'^get_profiles/$','admin.views.get_profiles'),
	url(r'^get_divident/$','admin.views.get_dividents'),
	url(r'^get_trans_data/$','admin.views.get_trans_data'),
    # url(r'^$', 'myebs.views.home', name='home'),
    # url(r'^myebs/', include('myebs.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
)
