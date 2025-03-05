# Chat App

A cross-platform chat application built using Flutter, enabling real-time communication across Android, iOS, web, and desktop platforms.

## Features

- **Real-time Messaging**: Instant communication between users.
- **Cross-Platform Support**: Available on Android, iOS, web, and desktop.
- **User Authentication**: Secure sign-up and login functionality.
- **Group Chats**: Create and manage group conversations.
- **Push Notifications**: Receive notifications for new messages.


## Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/Moshood-Kausar/chat_app.git
   cd chat_app
   ```

2. **Install dependencies**:

   ```bash
   flutter pub get
   ```

3. **Run the application**:

   ```bash
   flutter run
   ```

   Ensure you have a device or emulator connected.

## Configuration

The application utilizes Firebase for backend services. To configure:

1. **Firebase Setup**:

   - Create a Firebase project at [Firebase Console](https://console.firebase.google.com/).
   - Add Android, iOS, and web apps to your Firebase project.
   - Download the `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) files.
   - Place these files in the respective directories as per Firebase documentation.

2. **Update `firebase_options.dart`**:

   Regenerate the `firebase_options.dart` file using the `flutterfire` CLI to include your Firebase project configurations.

## Dependencies

- [Flutter](https://flutter.dev/)
- [Firebase Core](https://pub.dev/packages/firebase_core)
- [Firebase Authentication](https://pub.dev/packages/firebase_auth)
- [Cloud Firestore](https://pub.dev/packages/cloud_firestore)
- [Firebase Storage](https://pub.dev/packages/firebase_storage)
- [Provider](https://pub.dev/packages/provider)
- [Flutter Local Notifications](https://pub.dev/packages/flutter_local_notifications)

For a complete list, refer to `pubspec.yaml`.

## Screenshot

![Alt text]([image_path_or_URL](https://drive.google.com/file/d/1y7e2tOxs9qVP6_6UC31aF-BTh7veivW5/view?usp=sharing))

## Contributing

Contributions are welcome! Please follow these steps:

1. **Fork the repository** on GitHub.

2. **Create a new branch** for your feature:

   ```bash
   git checkout -b feature/YourFeatureName
   ```

3. **Make your changes** and ensure they are properly tested.

4. **Commit your changes** with a meaningful message:

   ```bash
   git add .
   git commit -m "Add: YourFeatureName"
   ```

5. **Push the branch** to your forked repository:

   ```bash
   git push origin feature/YourFeatureName
   ```

6. **Open a pull request** on GitHub to merge your changes into the main repository.


## Acknowledgements

- [Flutter](https://flutter.dev/)
- [Firebase](https://firebase.google.com/)
- Fluteristas

---

*This project is a work in progress. Features and improvements are continually being added.*
```

