import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';
import 'package:mobile_design_project_second/provider/register_provider.dart';
import 'package:mobile_design_project_second/view/pages/Sign%20Up/sign_up_page.dart';
import 'package:mobile_design_project_second/view/pages/welcome_page.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController countryCode = TextEditingController();
  TextEditingController textFieldController = TextEditingController();
  int _value = 0;
  bool trueFalse = true;
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
            child: Column(
              children: [
                SizedBox(
                  height: context.height * 0.25,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Uzbekistan',
                        style: TextStyle(
                          fontFamily: 'Pop',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xff027C90),
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Container(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.5, color: const Color(0xff027C90)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 40,
                                child: TextField(
                                  controller: countryCode,
                                  decoration: const InputDecoration(
                                    labelText: '+9989',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '|',
                                style: TextStyle(
                                  fontSize: 33,
                                  color: Color(0xff027C90),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  controller: context
                                      .read<RegisterProvider>()
                                      .emailController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                const Text(
                  'Please confirm your country code and enter your phone number.',
                  style: TextStyle(
                    fontFamily: 'Pop',
                    color: Color.fromRGBO(0, 0, 0, 0.71),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              fillColor: MaterialStateProperty.all(
                                const Color(0xff027C90),
                              ),
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              },
                            ),
                            const Text("I’m a doctor"),
                          ],
                        ),
                        SizedBox(
                          width: context.width * 0.087,
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              fillColor: MaterialStateProperty.all(
                                const Color(0xff027C90),
                              ),
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              },
                            ),
                            const Text("I'm a patient"),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 3,
                              fillColor: MaterialStateProperty.all(
                                const Color(0xff027C90),
                              ),
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              },
                            ),
                            const Text("I’m a nurse"),
                          ],
                        ),
                        SizedBox(
                          width: context.width * 0.1,
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 4,
                              fillColor: MaterialStateProperty.all(
                                const Color(0xff027C90),
                              ),
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              },
                            ),
                            const Text("I’m a undergraduate "),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.04,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(118, 184, 195, 0.3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.height * 0.015,
                      ),
                      SvgPicture.asset("assets/warning.svg"),
                      SizedBox(
                        height: context.height * 0.015,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: context.width * 0.03),
                        child: const Text(
                          'By click the “Next” button, I declare my consent to use  the above phone number as the means of comm... Details',
                          style: TextStyle(
                            fontFamily: 'Pop',
                            color: Color.fromRGBO(0, 0, 0, 0.71),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.015,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: context.height * 0.06,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    25.0,
                                  ),
                                ),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              // textFieldController
                              isTrue
                                  ? const Color(0xff027C90)
                                  : const Color(0xff027C90),
                            ),
                          ),
                          onPressed: () async {
                            if (context
                                .read<RegisterProvider>()
                                .emailController
                                .text
                                .isNotEmpty) {
                              print("isEmpty");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WelcomePage()));
                            }
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have  an account?',
                      style: TextStyle(
                        fontFamily: 'Pop',
                        color: Color.fromRGBO(38, 38, 38, 0.5),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Pop',
                          color: Color(0xff1976D2),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
