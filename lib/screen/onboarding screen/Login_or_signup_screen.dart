import 'package:flutter/material.dart';
import 'package:spade/Navigation_container.dart';
import 'package:spade/screen/onboarding%20screen/hello_screen.dart';



class LoginOrSignupScreen extends StatefulWidget {
  const LoginOrSignupScreen({super.key});

  @override
  State<LoginOrSignupScreen> createState() => _LoginOrSignupScreenState();
}

class _LoginOrSignupScreenState extends State<LoginOrSignupScreen> {

  _loaderOn() {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      return Container(
        color: Colors.white,
        child: Center(child: Image.asset("assets/images/ShuffleE.gif")),
      );
    },
  );

  Future.delayed(const Duration(seconds: 4), () {
    Navigator.pop(context); // Dismiss the dialog
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Navigationcontianer()),
    );
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/onboarding1.png")),
            const SizedBox(
              height: 100,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  color: Colors.black,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const HelloScreen())));
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                 
                    _loaderOn();
                  },
                  child: Container(
                    height: 47.59,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "By clicking ‘Create acount’ or ‘Log in’, I state that I have read and understood the terms and conditions. ",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
