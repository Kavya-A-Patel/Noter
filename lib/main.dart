import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:noter/firebase_options.dart';
import 'package:noter/views/login_view.dart';
import 'package:noter/views/register_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/login/': (context) => const LoginView(),
        '/register/': (context) => const RegisterView(),
      },
    ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(
                  options: DefaultFirebaseOptions.currentPlatform,
                ),
        builder:(context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              // final user = FirebaseAuth.instance.currentUser;
              // if (user?.emailVerified ?? false) {
                // return const Text('Done');
              // } else {
                // return const VerifyEmailView();
                //SchedulerBinding.instance.addPostFrameCallback((_) {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const VerifyEmailView()));
                //});
              // }
              return const LoginView();
            default: return const CircularProgressIndicator();
          }
        },
      );
  }
}


