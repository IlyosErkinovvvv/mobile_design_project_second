import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';
import 'package:mobile_design_project_second/view/pages/Sign%20Up/sign_up_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpPage())),
            child: const Icon(Icons.arrow_back, color: Colors.black)),
        title: const Text(
          'Forgot password',
          style: TextStyle(
            fontFamily: 'Pop',
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.05),
        child: Column(
          children: [
            SizedBox(
              height: context.height * 0.03,
            ),
            const Text(
              'Select which contact details shoild we use to reset your password',
              style: TextStyle(
                fontFamily: 'Pop',
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            // First Container //
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromRGBO(2, 124, 144, 0.3)),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.width * 0.05,
                    vertical: context.height * 0.04),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/sms.svg"),
                    SizedBox(
                      width: context.width * 0.07,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'via SMS:',
                          style: TextStyle(
                            fontFamily: 'Pop',
                            color: Color.fromRGBO(38, 38, 38, 0.5),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        const Text(
                          '+9989098*****01',
                          style: TextStyle(
                            fontFamily: 'Pop',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            // Second Container //
            Container(
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromRGBO(2, 124, 144, 0.3)),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.width * 0.05,
                    vertical: context.height * 0.04),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/email.svg"),
                    SizedBox(
                      width: context.width * 0.07,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'via Email:',
                          style: TextStyle(
                            fontFamily: 'Pop',
                            color: Color.fromRGBO(38, 38, 38, 0.5),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: context.height * 0.01,
                        ),
                        const Text(
                          '+ex***le@yourdomen.com',
                          style: TextStyle(
                            fontFamily: 'Pop',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
