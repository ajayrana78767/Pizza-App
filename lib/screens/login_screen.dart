import 'package:flutter/material.dart';
import 'package:pizza_app/screens/register_screen.dart';
import 'package:pizza_app/utils/color_constants.dart';
import 'package:pizza_app/utils/custom_button.dart';
import 'package:pizza_app/utils/spacing_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/brand_logo.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SpacingUtils.wspace10,
                  const Text(
                    'Brand Name',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
              SpacingUtils.space40,
              TextFormField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: const Offset(0, 1),
                                blurRadius: 4,
                                spreadRadius: 0,
                              )
                            ]),
                        child: Image.asset('assets/images/email_icon.png')),
                  ),
                ),
              ),
              SpacingUtils.space20,
              TextFormField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  hintText: 'password',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: const Offset(0, 1),
                                blurRadius: 4,
                                spreadRadius: 0,
                              )
                            ]),
                        child: Image.asset('assets/images/password_icon.png')),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ))),
              SpacingUtils.space20,
              CustomButton(
                onPressed: () {},
                text: 'Login',
              ),
              SpacingUtils.space20,
              const Text(
                '--------------- or ---------------',
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              SpacingUtils.space20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don’t have an account?',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()));
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
