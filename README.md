# Flight Management System (FMS)

A comprehensive web-based application for managing flight schedules, bookings, and passenger manifests. Built with **Django** and **Bootstrap 5**, this system provides distinct portals for Administrators and Passengers.

## 🚀 Features

### ✈️ For Passengers
* **User Authentication:** Secure registration and login system.
* **Dashboard:** Personalized dashboard showing upcoming flights.
* **Flight Search:** Search for flights by origin, destination, date, and cabin class.
* **Booking System:** Book flights for yourself and others.
* **Profile Management:** Update personal details, passport info, and change passwords.
* **My Bookings:** View a history of past and upcoming booked flights.

### 🛠️ For Administrators
* **Admin Dashboard:** High-level overview of total flights, bookings, and cancellations.
* **Flight Management:** * Add new flight schedules.
    * Edit existing flight details (delays, pricing changes).
    * Cancel or Delete flights.
* **Passenger Manifest:** View real-time passenger lists for any flight.
    * Search/Filter manifest by Name, Class, or Passport.
    * Remove passengers from a flight.
* **Reports & Analytics:**
    * View detailed operational reports (Revenue, Occupancy Rates).
    * **PDF Export:** Generate and download professional PDF reports (Financial, Occupancy, General).
    * *Note: Sensitive financial data is restricted to Superusers.*

## 📦 Prerequisites

* Python 3.10+
* pip (Python Package Manager)

## ⚙️ Installation Guide

1.  **Clone or Download the Repository**
    ```bash
    git clone <your-repo-url>
    cd FlightSystem
    ```

2.  **Create a Virtual Environment (Optional but Recommended)**
    ```bash
    # Windows
    python -m venv venv
    venv\Scripts\activate

    # Mac/Linux
    python3 -m venv venv
    source venv/bin/activate
    ```

3.  **Install Dependencies**
    ```bash
    pip install -r requirements.txt
    ```

4.  **Apply Database Migrations**
    Initialize the database tables.
    ```bash
    python manage.py makemigrations
    python manage.py migrate
    ```

5.  **Create a Superuser (Admin)**
    You need a superuser account to access the Admin Dashboard and Financial Reports.
    ```bash
    python manage.py createsuperuser
    ```
    *Follow the prompts to set a username, email, and password.*

6.  **Seed Initial Data (Optional)**
    If you have the seed script enabled, you can populate the database with dummy airports and flights:
    ```bash
    python manage.py seed_data
    ```

7.  **Run the Development Server**
    ```bash
    python manage.py runserver
    ```

    Access the application at: `http://127.0.0.1:8000/`

## 📖 Usage

### accessing the Admin Portal
1.  Log in using the **Superuser** account you created.
2.  You will be redirected to the **Admin Dashboard**.
3.  From here, you can add flights, view reports, or manage manifests.

### Accessing the Passenger Portal
1.  Click **Register** on the login page to create a new passenger account.
2.  Log in with your new credentials.
3.  You will be redirected to the **Passenger Dashboard** to search and book flights.

## 🖼️ HTML Templates (28 Pages)

The project contains **28 HTML template pages** organised by Django app:

### Base (1 page)
| Template | Description |
|---|---|
| `templates/base.html` | Global base layout inherited by all other pages |

### Users App (10 pages)
| Template | Description |
|---|---|
| `users/login.html` | User login page |
| `users/passenger_register.html` | New passenger registration form |
| `users/profile.html` | Logged-in user profile page |
| `users/passenger_profile.html` | Public/admin view of a passenger's profile |
| `users/admin_dashboard.html` | Administrator dashboard overview |
| `users/passenger_dashboard.html` | Passenger dashboard with upcoming flights |
| `users/forgot_password.html` | Password reset request form |
| `users/password_reset_done.html` | Confirmation that reset email was sent |
| `users/password_reset_confirm.html` | New-password entry form (from reset link) |
| `users/password_reset_complete.html` | Success page after password reset |

### Flights App (10 pages)
| Template | Description |
|---|---|
| `flights/search_flight.html` | Flight search form |
| `flights/flight_results.html` | Search results listing |
| `flights/flight_details.html` | Detailed view of a single flight |
| `flights/flights_management.html` | Admin flight management list |
| `flights/add_new_flight.html` | Form to add a new flight |
| `flights/edit_flight.html` | Form to edit an existing flight |
| `flights/view_flights.html` | Public/passenger flight listing |
| `flights/flight_manifest.html` | Passenger manifest for a flight |
| `flights/reports.html` | Analytics and reports page |
| `flights/report_pdf.html` | PDF-renderable report template |

### Bookings App (6 pages)
| Template | Description |
|---|---|
| `bookings/seat_selection.html` | Seat selection during booking |
| `bookings/passenger_details.html` | Enter passenger details for booking |
| `bookings/booking_confirmation.html` | Booking confirmed summary page |
| `bookings/booking_details.html` | Detail view of a single booking |
| `bookings/my_bookings.html` | Passenger's booking history |
| `bookings/ticket_pdf.html` | PDF-renderable ticket template |

### Payments App (1 page)
| Template | Description |
|---|---|
| `payments/process_payment.html` | Payment processing page |

---

## 👥 Contributors & Commit History

| Contributor | Personal Commits | Role |
|---|---|---|
| [@Abdulsa1am](https://github.com/Abdulsa1am) | **6** | Repository Owner |
| [@Fadilullah-Almohammed](https://github.com/Fadilullah-Almohammed) | multiple | Collaborator |
| [@a7-u](https://github.com/a7-u) | multiple | Collaborator |

### Commits made personally by @Abdulsa1am (6 commits)

| # | SHA | Message | Date |
|---|---|---|---|
| 1 | [`e64092e`](https://github.com/Abdulsa1am/flight-management-system/commit/e64092eeb1aac08e1a7027fc2f1b4c0cad7d7fef) | more documentations | 2025-12-15 |
| 2 | [`e1c79aa`](https://github.com/Abdulsa1am/flight-management-system/commit/e1c79aab7fb0bf7cbdab543c646cec2bbb25af52) | Refactor: cleanup of HTML | 2025-12-15 |
| 3 | [`cbf6711`](https://github.com/Abdulsa1am/flight-management-system/commit/cbf67114a046d4fa03d845cb41fc54dce57abc5e) | Refactor: Update docstrings to Google Style and remove legacy comments | 2025-12-15 |
| 4 | [`68ef435`](https://github.com/Abdulsa1am/flight-management-system/commit/68ef43502dac8e9b5145b4cbcad05e8ebc37dc1c) | Refactor: Update docstrings to Google Style and remove legacy comments | 2025-12-15 |
| 5 | [`c80ce5a`](https://github.com/Abdulsa1am/flight-management-system/commit/c80ce5a984501b8d3568ffff7e419b3d8f39c72e) | Add unit tests for all apps | 2025-12-14 |
| 6 | [`f6c4bee`](https://github.com/Abdulsa1am/flight-management-system/commit/f6c4beee9d00c3f1adb25bd0e22214dbe8f96960) | Front end (#6) | 2025-11-16 |

---

## 📄 Key Dependencies

* **Django 5.2.7**: The core web framework.
* **xhtml2pdf**: Used for generating downloadable PDF reports.
* **Bootstrap 5**: Frontend styling for a responsive and modern UI.
* **Bootstrap Icons**: For UI icons.
