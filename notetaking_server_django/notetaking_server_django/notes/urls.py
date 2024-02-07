from django.urls import path
from .views import *

urlpatterns = [
  path('', getRoutes, name="routes"),
  
  path('notes/', getNotes, name="get-notes"),
  path('notes/create/', createNote, name="create-note"),
  path('notes/<str:pk>/', getNote, name="get-note"),
  path('notes/<str:pk>/update/', updateNote, name="update-note"),
  path('notes/<str:pk>/delete/', deleteNote, name="delete-note"),
]
