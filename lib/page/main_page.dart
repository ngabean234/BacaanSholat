import 'package:bacaan_sholat/page/ayat_kursi_page.dart';
import 'package:bacaan_sholat/page/bacaan_sholat_page.dart';
import 'package:bacaan_sholat/page/coba.dart';
import 'package:bacaan_sholat/page/niat_sholat_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  void logOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NiatSholat()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/ic_niat.png",
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Niat Sholat",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BacaanSholat()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/ic_doa.png",
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Bacaan Sholat",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AyatKursi()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/ic_bacaan.png",
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Ayat Kursi",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Coba()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/ic_catatan.png",
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Todolist",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    logOut(); // Call the logout function
                  },
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.red), // Change the border color to red
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red, // Change the button color to red
                    ),
                    child: Text(
                      "Logout", // Change the button text to "Logout"
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
