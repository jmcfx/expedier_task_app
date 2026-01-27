# Expedier Task App

A Flutter-based fintech UI application focused on delivering a polished, production-quality user experience.
The app showcases animated onboarding flows, authentication screens, and user profile interfaces, built entirely as UI flows.

Navigation is handled using AutoRoute (Navigator 2.0) for declarative, scalable routing between screens.
The project emphasizes clean **UI architecture**, smooth animations, responsive layouts, and well-structured navigation flows


### Snippet 🧷


https://github.com/user-attachments/assets/217ea1bb-4eec-4916-a0a1-72f871ac4a1a




## Getting Started


## 📦 Installation

**Clone the Repository**

```bash
git clone git@github.com:jmcfx/expedier_task_app.git

cd expedier_task_app
```



### 🚀 Steps to Run




#### 1. 🔧 Set Up Dependencies and Generate Code ‼️


Run the following to clean the project, install dependencies,  `build_runner` :

```bash
make fresh
``` 

This will run the following commands:



-   `flutter clean` – Resets the build directory
-   `flutter pub get` – Fetches dependencies
-   `dart run build_runner build -d` – Help Generates  `App Route.`



#### 2. 🚀 Run the app on a connected device or emulator ‼️

```bash
flutter run
```


### 3. 🔄 Regenerate Code Only

If you just need to regenerate code (e.g., after editing models or annotations):

```bash
make runner
```


> Runs `dart run build_runner build -d`


#### 4. 👀 Watch for File Changes

Automatically regenerates code on file changes during development:
```bash
make watch
```



#### 5. 📦 Build APK (for Android)

To create an APK:
```bash
make apk
```



> Equivalent to:  
> `flutter clean && flutter build apk`




## Folder Structure :open_file_folder:


```

lib/
└─ src/
   ├─ app/
   │  ├─ router/
   │  │  ├─ app_router.dart
   │  │  └─ app_router.gr.dart
   │  ├─ themes/
   │  ├─ app.dart/
   │  └─ app_view.dart/
   │
   ├─ core/
   │  ├─ constants/
   │  ├─ enums/
   │  └─ extensions/
   │
   ├─ features/
   │  ├─ auth/
   │  │  └─ presentation/
   │  │     ├─ pages/
   │  │     └─ widgets/
   │  │
   │  ├─ home/
   │  │  └─ presentation/
   │  │     ├─ pages/
   │  │     └─ widgets/
   │  │
   │  ├─ onboarding/
   │  │  └─ presentation/
   │  │     ├─ pages/
   │  │     ├─ widgets/
   │  │     └─ animations/
   │  │
   │  └─ user_profile/
   │     └─ presentation/
   │        ├─ pages/
   │        └─ widgets/
   │
   ├─ shared/
   │  ├─ widgets/
   │  └─ extensions/
   │
   └─ main.dart

```

