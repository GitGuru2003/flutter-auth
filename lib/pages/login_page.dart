import 'package:authentication/components/my_button.dart';
import 'package:authentication/components/my_squaretile.dart';
import 'package:authentication/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  signUserIn() {}
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          // safearea widget helps the app to avoid the status bar/notch area
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                // logo
                SvgPicture.asset("assets/icons/5.svg",
                    height: 250,
                    width: 250,
                    colorFilter:
                        ColorFilter.mode(Colors.grey, BlendMode.srcIn)),

                // welcome back, you've been missed
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Idaho One Volleyball Club",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 20),
                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: "Username",
                  obscureText: false,
                ),

                const SizedBox(height: 20),
                // password textfield
                MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true),
                // forgot password
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                // sign in button

                MyButton(
                  onTap: signUserIn,
                ),

                SizedBox(height: 40),
                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[400],
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[400],
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                // google + apple button
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SquareTile(
                    imagePath: "lib/images/google.png",
                  ),
                  SquareTile(imagePath: "lib/images/apple.png"),
                ]),

                // don't have an account? sign up
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Register now",
                      style: TextStyle(color: Colors.blue[800]),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
