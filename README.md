<img width="3188" height="1202" alt="frame (3)" src="https://github.com/user-attachments/assets/517ad8e9-ad22-457d-9538-a9e62d137cd7" />


# Kunjononte Mone Povalle 🎯


## Basic Details
### Team Name: Redux


### Team Members
- Team Lead: Mohammed Fahad - Government Engineering College Palakkad
- Member 2: Mohammed Muflih - Government Engineering College Palakkad

### Project Description
A playful Flutter app that detects when the phone screen turns off and sends a random funny notification to the user. Built with Provider for state management and `flutter_local_notifications` for local alerts.

### The Problem (that doesn't exist)
People keep ignoring their apps and leaving them in the dark. The app gets lonely and wants attention — immediately.

### The Solution (that nobody asked for)
Detect screen OFF events and deliver delightful, silly notifications so the app can roast you lovingly for abandoning it.

## Technical Details
### Technologies/Components Used
For Software:
- Dart
- Flutter
- Provider (state management)
- screen_state (detect screen on/off)
- flutter_local_notifications (local notifications)

### Implementation
- Modularized Flutter project:
  - `core/` — shared services (notification service).
  - `features/home/` — UI and provider for home feature.
  - `providers/` — screen-state provider that listens to `screen_state`.
- On screen OFF event: provider picks a random message and triggers `NotificationService.showFunnyNotification()`.
- Permissions (`android/app/src/main/AndroidManifest.xml`): `WAKE_LOCK`, `RECEIVE_BOOT_COMPLETED` added so notifications & listeners can work reliably.
- Gradle Kotlin DSL tweaks: enable desugaring and align JVM targets to avoid build issues with newer notification libraries.

## Installation
1. Clone the repo:
   ```bash
   git clone https://github.com/Muflih-uk/useless_project_temp/
   cd useless_project_temp/app/

# Run
flutter pub get
flutter run

### Project Documentation
For Software:
    core/notifications/notification_service.dart — initializes flutter_local_notifications and exposes showFunnyNotification(String message).
    features/home/providers/home_provider.dart — provider for UI state and messages.
    providers/screen_provider.dart — listens to screen_state stream and triggers notifications on SCREEN_OFF.
    main.dart — app entry; initializes NotificationService and registers providers.
    Android Manifest updates: add <uses-permission android:name="android.permission.WAKE_LOCK"/> and <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/>. Optionally add a BOOT_COMPLETED receiver if you want the listener to re-register at boot.

# Screenshots (Add at least 3)
![Screenshot1](Add screenshot 1 here with proper name)
*Add caption explaining what this shows*

![Screenshot2](Add screenshot 2 here with proper name)
*Add caption explaining what this shows*

![Screenshot3](Add screenshot 3 here with proper name)
*Add caption explaining what this shows*

# Diagrams
![Workflow](Add your workflow/architecture diagram here)
*Add caption explaining your workflow*

For Hardware:

# Schematic & Circuit
![Circuit](Add your circuit diagram here)
*Add caption explaining connections*

![Schematic](Add your schematic diagram here)
*Add caption explaining the schematic*

# Build Photos
![Components](Add photo of your components here)
*List out all components shown*

![Build](Add photos of build process here)
*Explain the build steps*

![Final](Add photo of final product here)
*Explain the final build*

### Project Demo
# Video
[Add your demo video link here]
*Explain what the video demonstrates*

# Additional Demos
[Add any extra demo materials/links]

## Team Contributions
- [Name 1]: [Specific contributions]
- [Name 2]: [Specific contributions]
- [Name 3]: [Specific contributions]

---
Made with ❤️ at TinkerHub Useless Projects 

![Static Badge](https://img.shields.io/badge/TinkerHub-24?color=%23000000&link=https%3A%2F%2Fwww.tinkerhub.org%2F)
![Static Badge](https://img.shields.io/badge/UselessProjects--25-25?link=https%3A%2F%2Fwww.tinkerhub.org%2Fevents%2FQ2Q1TQKX6Q%2FUseless%2520Projects)



