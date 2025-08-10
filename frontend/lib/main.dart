import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:frontend/firebase_options.dart';
//import 'package:audioplayers/audioplayers.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  // final player = AudioPlayer();
  // await player.play(AssetSource('sound/alert.mp3')); // 3 sec sound
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  FirebaseMessaging.onBackgroundMessage(backgroundHandler);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    requestPermission();
    getToken();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // final player = AudioPlayer();
      // player.play(AssetSource('sound/alert.mp3'));
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  void requestPermission() async {
    await FirebaseMessaging.instance.requestPermission();
  }

  void getToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    print("FCM Token: $token");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text("Notification Demo")),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Welcome from Notification")));
  }
}
