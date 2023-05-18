import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';
import 'package:mobile_design_project_second/view/pages/Sign%20In/sign_in_page.dart';
import 'package:mobile_design_project_second/view/pages/Sign%20Up/sign_up_page.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
              child: Column(
                children: [
                  SizedBox(
                    height: context.height * 0.3,
                  ),
                  SvgPicture.asset('assets/green_ucare.svg'),
                  SizedBox(
                    height: context.height * 0.1,
                  ),
                  const Text(
                    'Welcome to uCare',
                    style: TextStyle(
                      fontFamily: 'Pop',
                      color: Color.fromRGBO(0, 0, 0, 0.71),
                      fontWeight: FontWeight.w400,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.12,
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
                          const Color(0xff027C90),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: const Text(
                        "Sign up",
                        style: 
                           TextStyle(
                            fontFamily: 'Pop',
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                          
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.04,
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
                                side: BorderSide(color: Color(0xff027C90)))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                      },
                      child: const Text(
                        "Sign in",
                        style: 
                           TextStyle(
                            fontFamily: 'Pop',
                            color: Color(0xff027C90),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                          
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
