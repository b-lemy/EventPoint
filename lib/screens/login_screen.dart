import 'package:digital_invitation_card/screens/homepage.dart';
import 'package:digital_invitation_card/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String phoneNumber = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
            top: 160.0, bottom: 10.0, left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/Group 300.png'),
            const SizedBox(
              height: 10,
              // child: Image.asset('assets/Group 300.png'),
            ),
            const Text(
              "event point",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "Phone number",
                hintText: "Enter phone number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFCB549))),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => phoneNumber = value,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFCB549))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(color: Color(0xFFFCB549)),
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
              
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomepageScreen(
                            phoneNumber: phoneNumber,
                          )),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xFF3D4245)),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account ?",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    )
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color(0xFFFCB549),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
