import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State <RegisterView> createState() =>  RegisterViewState();
}

class  RegisterViewState extends State <RegisterView> {

  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Column(
            children: [
              TextField(
                controller: _email,
                decoration: const InputDecoration(
                  hintText: 'Enter your email here',
                ),
                enableSuggestions: false,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                controller: _password,
                decoration: const InputDecoration(
                  hintText: 'Enter your password here',
                ),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
              ),
              TextButton( 
                onPressed: () async {
                  final email = _email.text;
                  final password = _password.text;
                  try {
                    final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: email, password: password
                    );
                    print(userCredential);
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('Weak Password');
                    } else if (e.code == 'email-already-in-use') {
                      print('Email is in Use');
                    } else if (e.code == 'invalid-email') {
                      print('Invalid Email');
                    }
                  }
                },
                child: const Text('Register'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil('/login/', (route) => false);
                }, 
                child: Text('Already Registered? Login Here!')
              ),
            ],
          ),
    );
  }
}