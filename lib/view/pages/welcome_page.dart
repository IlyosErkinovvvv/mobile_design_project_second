import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';
import 'package:mobile_design_project_second/view/screens/BottomNavigationBar/bottom_navigation_bar.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: context.height * 0.25,
                  ),
                  SvgPicture.asset('assets/green_ucare.svg'),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  const Text(
                    'Congrats!',
                    style: 
                      TextStyle(
                        fontFamily: 'Pop',
                        color: Color(0xff027C90),
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  const Text(
                    'Your account ready to use',
                    style: 
                      TextStyle(
                        fontFamily: 'Pop',
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      
                    ),
                  ),
                  SizedBox(
                    height: context.height * 0.27,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: context.height * 0.06,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomNavigationPage()));
                          },
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
                                const Color(0xff027C90)),
                          ),
                          child: const Text(
                            "Go to homepage",
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
                    ],
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
