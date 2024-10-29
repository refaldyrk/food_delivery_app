import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/auth/forgot_password.dart';
import 'package:food_delivery_app/page/auth/register.dart';
import 'package:food_delivery_app/styles.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            alignment: Alignment.topLeft,
            color: darkColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/decoration.png',
                  height: 177,
                  width: 177,
                ),
                const Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 30,
                        color: backgroundColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 3),
                const Center(
                  child: Text(
                    'Please sign in to your existing account',
                    style: TextStyle(color: backgroundColor, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            decoration: const BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                )),
            height: 579,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text(
                      'EMAIL',
                      style: TextStyle(
                          color: darkColor,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: white1,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: backgroundColor),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: backgroundColor),
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'example@gmail.com',
                          hintStyle: const TextStyle(color: grey1)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text(
                      'PASSWORD',
                      style: TextStyle(
                          color: darkColor,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                            color: grey1,
                          ),
                          fillColor: white1,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: backgroundColor),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: backgroundColor),
                              borderRadius: BorderRadius.circular(10)),
                          hintText: '********',
                          hintStyle: const TextStyle(color: grey1)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            splashRadius: 15,
                            value: checkColor,
                            activeColor: primaryColor,
                            side: const BorderSide(color: borderColorGrey),
                            onChanged: (bool? value) {
                              setState(() {
                                if (value == true) {
                                  checkColor = true;
                                } else {
                                  checkColor = false;
                                }
                              });
                            },
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(fontSize: 13, color: grey1),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPasswordPage()));
                          },
                          child: const Text(
                            'Forgot password',
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 31,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 21.4),
                  width: double.infinity,
                  height: 74.88,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.7))),
                    child: const Text('Login', style: TextStyle(fontSize: 20)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don`t have an account?\t'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()));
                        },
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
