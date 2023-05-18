import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';
import 'package:mobile_design_project_second/provider/register_provider.dart';
import 'package:mobile_design_project_second/view/pages/Sign%20In/sign_in_page.dart';
import 'package:mobile_design_project_second/view/pages/welcome_page.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formField = GlobalKey<FormState>();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterProvider(),
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                            "Sign up for free",
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color(0xff027C90),
                    ),
                    SizedBox(
                      height: context.height * 0.09,
                    ),
                    // TEXTFORMFIELD 1 //
                    SizedBox(
                      height: context.height * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller:
                            context.read<RegisterProvider>().emailController,
                        validator: (value) {
                          bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value!);
                          if (value.isEmpty) {
                            return "Enter email";
                          } else if (!emailValid) {
                            return "Enter valid email";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "Phone number or login",
                          contentPadding: EdgeInsets.only(
                            left: context.width * 0.05,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffix: Padding(
                            padding: EdgeInsets.only(
                              right: context.width * 0.04,
                              top: context.height * 0.008,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.03,
                    ),
                    // TEXTFORMFIELD 2 //
                    SizedBox(
                      height: context.height * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller:
                            context.read<RegisterProvider>().passController,
                        obscureText: passToggle,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter password";
                          } else if (context
                                  .read<RegisterProvider>()
                                  .passController
                                  .text
                                  .length <
                              6) {
                            return "Password length should be more than 6 characters";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffix: Padding(
                            padding: EdgeInsets.only(
                                right: context.width * 0.04,
                                top: context.height * 0.008),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  passToggle = !passToggle;
                                });
                              },
                              child: Icon(
                                passToggle
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: const Color(0xff027C90),
                              ),
                            ),
                          ),
                          contentPadding: EdgeInsets.only(
                            left: context.width * 0.05,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.03,
                    ),
                    const Text(
                      "Please enter your phone number or login and password.",
                      style: TextStyle(
                        fontFamily: 'Pop',
                        color: Color.fromRGBO(0, 0, 0, 0.71),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.03,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: context.height * 0.06,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff027C90)),
                        ),
                        onPressed: () {
                          if (context
                                  .read<RegisterProvider>()
                                  .emailController
                                  .text
                                  .isNotEmpty &&
                              context
                                  .read<RegisterProvider>()
                                  .passController
                                  .text
                                  .isNotEmpty) {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WelcomePage()));
                            });
                            // emailController.clear();
                            // passController.clear();
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
                    // InkWell(
                    //   child: Container(
                    //     width: double.infinity,
                    //     height: context.height * 0.06,
                    //     decoration: BoxDecoration(
                    //         color: const Color(0xff027C90),
                    //         borderRadius: BorderRadius.circular(10)),
                    //     child: const Center(
                    //       child: Text(
                    //         'Next',
                    //         style: TextStyle(
                    //           color: Color(0xffFFFFFF),
                    //           fontWeight: FontWeight.w400,
                    //           fontSize: 14.0,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: context.height * 0.03,
                    ),
                    const Text(
                      "or countinue with",
                      style: TextStyle(
                        fontFamily: 'Pop',
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.035,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // CONTAINER FACEBOOK //
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.width * 0.06,
                              vertical: context.height * 0.019,
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/facebook1.svg"),
                                SizedBox(
                                  width: context.width * 0.05,
                                ),
                                const Text(
                                  "Facebook",
                                  style: TextStyle(
                                    fontFamily: 'Pop',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // CONTAINER GOOGLE //
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.width * 0.08,
                              vertical: context.height * 0.016,
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/google.svg"),
                                SizedBox(
                                  width: context.width * 0.03,
                                ),
                                const Text(
                                  "Google",
                                  style: TextStyle(
                                    fontFamily: 'Pop',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Alreasy have account?",
                          style: TextStyle(
                            fontFamily: 'Pop',
                            color: Color.fromRGBO(38, 38, 38, 0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignInPage()));
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Color.fromRGBO(25, 118, 210, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
