import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({super.key});

  @override
  State<SignUpPassword> createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
  bool isCircle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                        style:TextStyle(
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
                  height: context.height * 0.10,
                ),
                const Text(
                  "Set application password",
                  style: TextStyle(
                    fontFamily: 'Pop',
                      color: Color.fromRGBO(0, 0, 0, 0.71),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                    
                  ),
                ),
                SizedBox(
                  height: context.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/round_point.svg"),
                    SizedBox(
                      width: context.width * 0.05,
                    ),
                    SvgPicture.asset("assets/round_point.svg"),
                    SizedBox(
                      width: context.width * 0.05,
                    ),
                    SvgPicture.asset("assets/round_point.svg"),
                    SizedBox(
                      width: context.width * 0.05,
                    ),
                    SvgPicture.asset("assets/round_point.svg"),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.08,
                ),
                SvgPicture.asset("assets/finger.svg"),
                SizedBox(
                  height: context.height * 0.13,
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
                    onPressed: () {},
                    child: const Text(
                      "Next",
                      style:  TextStyle(
                        fontFamily: 'Pop',
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                        ),
                      
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                const Text(
                  "Skip",
                  style:  TextStyle(
                    fontFamily: 'Pop',
                      color: Color(0xff1976D2),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
