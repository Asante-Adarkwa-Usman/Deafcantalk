import 'package:deafcantalk/shared_widgets/button.dart';
import 'package:deafcantalk/shared_widgets/custom_text_form_field.dart';
import 'package:deafcantalk/views/auth/signup_view.dart';
import 'package:deafcantalk/views/main/home_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: const Color.fromRGBO(0, 153, 156, 1),
                  child: Image.asset(
                    'assets/images/lg.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 300),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(240, 232, 233, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            color: Color.fromRGBO(0, 153, 156, 1)),
                      ),
                      const SizedBox(height: 30),
                      Form(
                        child: Column(
                          children: [
                            const CustomTextFormField(
                              label: Text('Mobile Number'),
                              hint: 'Enter your mobile number',
                              keyboardType: TextInputType.number,
                              prefixIcon: Icon(Icons.phone,
                                  color: Color.fromRGBO(0, 153, 156, 1)),
                            ),
                            const SizedBox(height: 20),
                            const CustomTextFormField(
                              label: Text('Password'),
                              hint: 'Enter your password',
                              prefixIcon: Icon(Icons.lock,
                                  color: Color.fromRGBO(0, 153, 156, 1)),
                              obscureText: true,
                            ),
                            const SizedBox(height: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const SignupView()));
                              },
                              child: RichText(
                                text: const TextSpan(
                                  text: "Don't have an account? ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Sign Up Here',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                0, 153, 156, 1))),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Button(
                          text: 'Login',
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const HomeView()),
                                (route) => false);
                          },
                          buttonColor: const Color.fromRGBO(0, 153, 156, 1)),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(right: 30),
                        child: const TextButton(
                            onPressed: null,
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(0, 153, 156, 1)),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
