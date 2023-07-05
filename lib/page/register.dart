import 'package:bacaan_sholat/page/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordValController = TextEditingController();

  bool errorValidation = false;

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/1.png",
                width: 500,
                height: 180,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text("Email"),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Tuliskan Email",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text("Password"),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "Tuliskan Password",
                  errorText: errorValidation ? "Passwords do not match" : null,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text("Validate Password"),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                controller: passwordValController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "Tuliskan Password",
                  errorText: errorValidation ? "Passwords do not match" : null,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      passwordController.text == passwordValController.text
                          ? errorValidation = false
                          : errorValidation = true;
                    });
                    if (errorValidation) {
                      print("Eror");
                    } else {
                      signUp();
                      Navigator.pop(context);
                    }
                  },
                  child: const Text("Daftar"),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Kembali",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
