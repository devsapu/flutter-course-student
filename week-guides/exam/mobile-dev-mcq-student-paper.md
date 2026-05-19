# MCQ Examination Paper — Student Copy

**Do not write answers on this file if your LMS is online-only. Use for print backup or review.**

---

## Examination cover sheet (for LMS / TVEC records)

| Field | Value |
|-------|--------|
| **Training institution** | ICET *(amend if different)* |
| **Programme / course** | Cross-Platform Mobile Application Development |
| **Subject / module** | Flutter & React Native (Weeks 1–8) |
| **NVQ level** | _________________ |
| **Unit of competency / module code** | _________________ |
| **Assessment type** | Written — Multiple Choice (MCQ) |
| **Assessment code** | MD-MCQ-01 |
| **Total questions** | 40 |
| **Marks per question** | 1 |
| **Total marks** | 40 |
| **Pass mark** | 20 *(50% — confirm with centre policy)* |
| **Duration** | 60 minutes |
| **Negative marking** | No |
| **Academic year / batch** | _________________ |
| **Examination date** | _________________ |
| **LMS course ID** | _________________ |

**Student details** *(if paper-based; otherwise LMS login)*

| Student registration no. | |
|--------------------------|---|
| Student name | |
| NIC no. | |

**Instructions to candidates**

1. Answer **all 40 questions**.
2. Each question has **only one** correct answer (A, B, C, or D).
3. Select the **best** answer.
4. There is **no penalty** for wrong answers unless your centre states otherwise.
5. No mobile phones, course repository, or unauthorised materials unless the invigilator allows.
6. Submit through the **LMS** before the timer ends.

---

## Part A — Flutter fundamentals (Questions 1–18)

**1.** Which command downloads Flutter packages from `pubspec.yaml`?  
A) `flutter run`  
B) `flutter pub get`  
C) `flutter build appbundle`  
D) `npm install`  

**2.** Most Flutter UI code lives in:  
A) `lib/` (e.g. `main.dart`)  
B) `android/` only  
C) `package.json`  
D) `ios/Podfile` only  

**3.** In Dart, a variable that is set once and not reassigned often uses:  
A) `async`  
B) `await`  
C) `final`  
D) `push`  

**4.** Flutter apps are written mainly in:  
A) JavaScript  
B) Kotlin only  
C) XML only  
D) Dart  

**5.** The file that lists app dependencies and version is:  
A) `pubspec.yaml`  
B) `AndroidManifest.xml` only  
C) `key.properties`  
D) `index.js`  

**6.** Which widget provides AppBar, body, and optional floating action button?  
A) `ListView`  
B) `Scaffold`  
C) `FutureBuilder`  
D) `TextFormField`  

**7.** *[Scenario]* You need to show 15 task titles in a scrollable list on one screen. Which widget is the best choice?  
A) `AppBar` only  
B) `FloatingActionButton` only  
C) `ListView`  
D) `Navigator.pop`  

**8.** `Scaffold`’s `body` takes:  
A) Many widgets via `children:` directly on `Scaffold`  
B) Only a `String`  
C) Only an `Icon`  
D) One widget  

**9.** To open a new screen on top of the current one you use:  
A) `Navigator.push`  
B) `Navigator.pop`  
C) `setState` only  
D) `flutter pub get`  

**10.** To return to the previous screen you use:  
A) `Navigator.push`  
B) `Navigator.pop`  
C) `flutter build apk`  
D) `notifyListeners`  

**11.** `Column` arranges children:  
A) Horizontally only  
B) In random order  
C) Vertically (top to bottom)  
D) Only inside Gradle files  

**12.** `Row` arranges children:  
A) Vertically only  
B) Only for release signing  
C) Only in React Native  
D) Horizontally (left to right)  

**13.** *[Scenario]* The user taps + and a number on the screen must increase. What should you use in Flutter?  
A) `StatefulWidget` and `setState`  
B) Only `StatelessWidget`  
C) Upload keystore  
D) `npm install` only  

**14.** `async` and `await` help you:  
A) Sign the Play Store bundle  
B) Wait for a `Future` without blocking the UI badly  
C) Replace `Scaffold`  
D) Create an FCM token in Gradle  

**15.** A `Future` means:  
A) A value available immediately  
B) A widget that never rebuilds  
C) A value that will be available later  
D) A Git branch name  

**16.** *[Scenario]* You called an API and want to show “Loading…”, then either data or an error message. Which widget fits best?  
A) `AppBar` only  
B) `FloatingActionButton` only  
C) `key.properties`  
D) `FutureBuilder`  

**17.** Provider with `ChangeNotifier` is useful when:  
A) Many screens need the same shared data  
B) You never update the UI  
C) You only edit `android/`  
D) You publish without signing  

**18.** After changing data in a `ChangeNotifier`, you call:  
A) `setState` on every widget manually  
B) `notifyListeners()`  
C) `flutter build appbundle`  
D) `Firebase.initializeApp` again  

---

## Part B — Firebase & application features (Questions 19–28)

**19.** Authentication means:  
A) Proving who the user is  
B) Uploading an AAB to Play Store  
C) Choosing app theme colours  
D) Running Metro bundler  

**20.** `FirebaseAuth.instance.authStateChanges()` is used to:  
A) Build the Android Gradle project  
B) Update UI when the user signs in or out  
C) List files in `node_modules`  
D) Generate an upload keystore  

**21.** If `authStateChanges()` emits `null`, the user is:  
A) Signed in  
B) On Play Store production  
C) Not signed in  
D) Running a release build  

**22.** Before using Firebase Auth or FCM, you should call:  
A) `Navigator.push`  
B) `npm run android` only  
C) `keytool -genkey` only  
D) `Firebase.initializeApp()`  

**23.** An FCM registration token is used to:  
A) Target push messages to one app install  
B) Set the `applicationId`  
C) Replace `pubspec.yaml`  
D) Run `flutter test`  

**24.** In this course, `FirebaseMessaging.onMessage` handled messages when the app was:  
A) Uninstalled  
B) In the foreground  
C) Only on iOS simulator  
D) Only during Play review  

**25.** *[Scenario]* You are building a login screen where the user types email and password. Which widget is most appropriate?  
A) `ListView` only  
B) `CircularProgressIndicator` only  
C) `TextFormField`  
D) AAB  

**26.** While Firebase checks login state, you often show:  
A) `Drawer` only  
B) `applicationId`  
C) `package.json`  
D) `CircularProgressIndicator`  

**27.** `StatelessWidget` is a good choice when:  
A) That widget does not keep its own changing state  
B) You always need a counter inside it  
C) You only use React Native  
D) You upload to Play Store  

**28.** *[Scenario]* You want “Save” and “Cancel” buttons on the same horizontal line. Which layout widget should you use?  
A) `Column` only  
B) `Row`  
C) `Scaffold` only  
D) `StreamBuilder` only  

---

## Part C — Publishing & cross-platform (Questions 29–40)

**29.** Google Play identifies your Android app mainly by:  
A) Application ID  
B) Dart file name in `lib/`  
C) FCM token  
D) Metro port number  

**30.** For new apps, Google Play expects upload as:  
A) Only `pubspec.yaml`  
B) AAB (Android App Bundle)  
C) `node_modules` folder  
D) Debug APK for production  

**31.** *[Scenario]* You changed one `Text` widget during daily development. What is the normal command to run the app on an emulator?  
A) `flutter run`  
B) `flutter build appbundle --release`  
C) `npm run android`  
D) `keytool -genkey`  

**32.** Release builds for the store should be signed with:  
A) Debug key only (forever)  
B) Your upload keystore  
C) No signature  
D) `google-services.json` only  

**33.** Which must **not** be committed to Git?  
A) `lib/main.dart`  
B) `week-guides/week8.md`  
C) `key.properties` and `*.jks` / `*.keystore`  
D) `App.tsx` source code  

**34.** Flutter’s programming language is:  
A) JavaScript / TypeScript  
B) Ruby  
C) SQL only  
D) Dart  

**35.** React Native UI is mainly written in:  
A) Dart  
B) JavaScript / TypeScript (JSX)  
C) Only Kotlin in `lib/`  
D) Only `pubspec.yaml`  

**36.** Flutter uses `pubspec.yaml`; React Native uses:  
A) `package.json`  
B) `upload-keystore.jks`  
C) `AndroidManifest.xml` only  
D) `firebase_options.dart` only  

**37.** Flutter `setState` in a `StatefulWidget` is closest to React Native’s:  
A) `applicationId`  
B) `flutter analyze`  
C) `useState`  
D) Play internal testing  

**38.** React Native’s JavaScript bundler in development is:  
A) Skia only  
B) CocoaPods only  
C) `keytool`  
D) Metro  

**39.** *[Scenario]* In `react_native_intro`, you created `StudentBadge.tsx` and want to show it on the home screen. Where should you import it from in `HomeScreen.tsx`?  
A) `../components/StudentBadge`  
B) `lib/main.dart`  
C) `android/key.properties`  
D) `week-guides/week5/`  

**40.** *[Scenario]* Metro is already running with `npm start`. You want to install the React Native app on the Android emulator. What do you run next?  
A) `flutter run` inside `react_native_intro`  
B) `npm run android`  
C) `flutter build appbundle`  
D) `flutter doctor --android-licenses` only  

---

**End of paper**
