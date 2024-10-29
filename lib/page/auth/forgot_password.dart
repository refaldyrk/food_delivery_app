import 'package:flutter/material.dart';
import 'package:food_delivery_app/styles.dart';

class ForgotPasswordPage extends StatelessWidget {
  static const routeName = '/forgot_password';

  const ForgotPasswordPage({super.key});

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
                Stack(children: [
                  Image.asset(
                    'assets/images/decoration.png',
                    height: 177,
                    width: 177,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: Icon(Icons.arrow_back),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: CircleBorder(),
                      ),
                    ),
                  ),
                ]),
                const Center(
                  child: Text(
                    'Forgot Password',
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
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  height: 74.88,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.7))),
                    child:
                        const Text('Send Code', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
