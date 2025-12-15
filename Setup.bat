@echo off
TITLE Flight Management System - Auto Setup
COLOR 0A

ECHO ======================================================
ECHO       FLIGHT MANAGEMENT SYSTEM - SMART SETUP
ECHO ======================================================

:: 1. Create .env file safely if it does not exist (using ASCII encoding to avoid errors)
IF NOT EXIST ".env" (
    ECHO [INFO] .env file not found. Creating it safely...
    powershell -Command "Set-Content -Path .env -Value 'SECRET_KEY=django-insecure-xbz2oyi!9+zl_388tml9)s7gt(p-s2av@^wlf@ws)@w7#_64' -Encoding Ascii"
    ECHO [SUCCESS] .env file created.
)

:: 2. Setup Virtual Environment
IF EXIST "venv" (
    ECHO [INFO] Virtual environment found. Activating...
) ELSE (
    ECHO [INFO] Creating NEW virtual environment...
    python -m venv venv
)

:: 3. Activate environment and install dependencies
CALL venv\Scripts\activate
ECHO [INFO] Checking and installing requirements...
pip install -r requirements.txt
:: Installing django-environ explicitly to ensure compatibility
pip install django-environ

:: 4. Apply Database Migrations
ECHO.
ECHO [INFO] Applying Database Migrations...
python manage.py makemigrations
python manage.py migrate

:: 5. Populate Initial Data (Seed Data)
ECHO.
set /P seed=Do you want to populate initial seed data (Dummy Flights/Airports)? [Y/N]? 
if /I "%seed%" EQU "Y" (
    ECHO [INFO] Seeding data...
    python manage.py seed_data
)

:: 6. Create Superuser (Admin)
ECHO.
set /P create_admin=Do you want to create a Superuser (Admin)? [Y/N]? 
if /I "%create_admin%" EQU "Y" (
    python manage.py createsuperuser
)

:: 7. Launch Server
ECHO.
ECHO ======================================================
ECHO [SUCCESS] System is Ready! Launching...
ECHO ======================================================
:: Opens the browser automatically
start http://127.0.0.1:8000/
python manage.py runserver

PAUSE