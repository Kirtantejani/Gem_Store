# Gem Store
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/Kirtantejani/Gem_Store)

Gem Store is a comprehensive e-commerce application built with Flutter, designed to provide a seamless shopping experience for clothing and accessories. It features a modern user interface with support for both light and dark themes, a complete user authentication flow, and a well-structured product discovery and order management system. The application is designed to be cross-platform, capable of running on Android, iOS, and desktop platforms.

## Key Features

- **User Authentication:** Secure sign-up, login, and password recovery flow with email verification.
- **Onboarding:** A user-friendly introductory carousel to welcome and guide new users.
- **Dynamic Home Page:** Engages users by displaying new collections, featured products, and top collections.
- **Product Discovery & Filtering:**
    - Advanced search functionality.
    - Filters for price range, color, star rating, category, and discounts.
    - Categorized browsing for Clothing, Accessories, Shoes, and Collections.
- **Order Management:**
    - Users can view their complete order history, with tabs sorting orders by `Pending`, `Delivered`, and `Cancelled` status.
    - Detailed order information and tracking capabilities.
- **User Profile:** A dedicated section for users to manage their personal information, address, and payment methods.
- **Theme Support:** Seamlessly switch between light and dark modes for user comfort.
- **Utility Screens:** Includes pages for app Settings, a Support/Feedback form, and an About Us section.

## Tech Stack

- **Framework:** Flutter
- **Language:** Dart
- **State Management:** GetX for state management, dependency injection, and route management.
- **Networking:** `http` package for making API calls to a mock backend endpoint.
- **UI Packages:**
    - `pinput`: For stylish OTP/verification code input fields.
    - `dots_indicator`: To display progress in the onboarding carousel.
    - `curved_navigation_bar`: For the main application's bottom navigation.
    - `expansion_tile_group`: To create expandable category lists in the search section.

## Project Structure

The project follows a feature-first architectural approach to organize the codebase for clarity and scalability.

```
lib/
├── api.dart             # API service and data fetching logic
├── Pages/               # All UI screens for the application
│   ├── startpages/      # Onboarding, login, signup flows
│   └── storescreen/     # Main app screens (Home, Search, Orders, Profile)
├── model/               # Data models for the application
├── widgets/             # Reusable custom UI components
├── data/                # Static data like image and product lists
├── dimensions/          # Helpers for creating a responsive UI
└── main.dart            # Main entry point of the app
```

## Getting Started

To get a local copy up and running, please follow these simple steps.

### Prerequisites

- You need to have the Flutter SDK installed. For instructions, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).
- A code editor like VS Code or Android Studio.

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/kirtantejani/gem_store.git
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd gem_store
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Run the application:**
    ```sh
    flutter run
