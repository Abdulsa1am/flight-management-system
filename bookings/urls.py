from django.urls import path
from . import views


urlpatterns = [
    path('my-bookings/', views.my_bookings, name='my_bookings'),
    path('seat-selection/', views.seat_selection, name='seat_selection'),
    path('passenger-details/', views.passenger_details, name='passenger_details'),
    path('create-booking/', views.create_booking, name='create_booking'),
    path('booking-details/<str:booking_id>', views.booking_details, name='booking_details'),
    path('download-eticket/<int:booking_id>/', views.download_ticket_pdf, name='download_ticket_pdf'),
]