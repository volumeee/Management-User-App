# Management User App

## Overview
The **Management User App** is a Flutter-based application designed for managing users. It features a retro-themed user interface with functionalities to create, update, and list users. The app utilizes GetX for state management and integrates with an API for data transactions.

## Demo
https://github.com/user-attachments/assets/4523ba45-7dd3-418e-bc36-ce4d579212ec

## Features
- **Home Page (Beranda)**
  - A welcoming screen that introduces the app and guides users to start managing their data.
  
- **User List Page (Halaman List Data)**
  - Displays a list of users retrieved from the API.
  - Allows for easy navigation to create or update a user.
  
- **Create User Page**
  - A form to add a new user to the system.
  
- **Update User Page**
  - A form to update details of an existing user.

## Technologies Used
- **Flutter**
  - Framework: Flutter
  - Language: Dart

- **State Management**
  - **GetX**: Utilized for state management and routing.

- **API Integration**
  - **Reqres API**: Sample open API used for simulating data transactions such as creating, updating, and fetching user data.

## Project Structure
```plaintext
management_user_app/
│
├── android/                    # Android-specific files
├── ios/                        # iOS-specific files
├── lib/                        # Main application code
│   ├── controller/             # Controllers for state management
│   │   └── user_controller.dart
│   ├── models/                 # Data models
│   │   └── user.dart
│   ├── pages/                  # UI pages
│   │   ├── home_page.dart      # Home page
│   │   ├── user_create_page.dart  # Create user page
│   │   ├── user_list_page.dart    # User list page
│   │   └── user_update_page.dart  # Update user page
│   ├── services/               # API services
│   │   └── api_services.dart
│   └── main.dart               # Entry point of the application
├── assets/                     # Assets (fonts, images, etc.)
│   └── fonts/
│       ├── Bangers-Regular.ttf
│       └── RobotoSlab-Regular.ttf
├── pubspec.yaml                # Project dependencies
└── README.md                   # Project documentation
```

# Management User App

## Getting Started

### Prerequisites

- **Flutter SDK**: Make sure you have the Flutter SDK installed.
- **Dart SDK**: Included with Flutter SDK.
- **Android Studio or Visual Studio Code** (with Flutter plugin): Either of these IDEs will work for development.
- **A device or emulator** for testing.

### Installation Steps

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/volumeee/management_user_app.git
    ```

2. **Navigate to the Project Directory:**

    ```bash
    cd management_user_app
    ```

3. **Install Dependencies:**

    ```bash
    flutter pub get
    ```

4. **Run the Application:**

    ```bash
    flutter run
    ```

## Pages Overview

### Home Page
- **Path**: `lib/pages/home_page.dart`
- **Description**: Displays a welcoming message with a retro-style UI. Includes a button to navigate to the user list page. Utilizes Card widgets and custom ElevatedButton styles to match the retro theme.

### User List Page
- **Path**: `lib/pages/user_list_page.dart`
- **Description**: Shows a list of users fetched from the API. Allows navigation to the Create User Page or Update User Page. Utilizes GetX for state management.

### Create User Page
- **Path**: `lib/pages/user_create_page.dart`
- **Description**: A form for entering first and last names to create a new user. Submits data to the API and navigates back to the user list upon success.

### Update User Page
- **Path**: `lib/pages/user_update_page.dart`
- **Description**: Pre-fills the form with the selected user's data for updates. Submits updated data to the API and navigates back to the user list upon success.

## State Management with GetX

- **Controllers**: Located in the `lib/controller/` directory.
- **User Controller**: Manages user state, including fetching, creating, and updating operations.
- **Navigation**: Handled via `Get.to()` for seamless and efficient page transitions.

## API Integration

- **API Service**: Located in `lib/services/api_services.dart`.
- **Reqres API**: Used for creating, updating, and retrieving user data.

  **Methods**:
  - `getUsers()`: Fetches a list of users.
  - `createUser()`: Sends a POST request to create a new user.
  - `updateUser()`: Sends a PUT request to update an existing user.

## Customization and Extensibility

- **Custom Fonts**: Located in the `assets/fonts/` directory. Uses Bangers and Roboto Slab fonts to create a unique, retro look.
- **Theming**: The app uses a pastel color palette with retro design elements.

  **Extensibility**:
  - The project structure allows for easy addition of new pages, models, or API services.
  - Additional functionalities such as deleting users, sorting the list, or adding search capabilities can be easily integrated.

## Conclusion

The Management User App is a great example of using Flutter, GetX, and API integration in a real-world application. Its retro-themed UI, efficient state management, and data handling make it a versatile tool for user management tasks.

For further customization or extension of this project, refer to the official [Flutter documentation](https://flutter.dev/docs) and [GetX documentation](https://pub.dev/packages/get).
