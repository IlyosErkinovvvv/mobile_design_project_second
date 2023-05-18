import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  bool isTrueFalse = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Personal Information',
          style: TextStyle(
            fontFamily: 'Pop',
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.055),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: context.height * 0.03,
                ),
                // Upload photo profile //
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff027C90)),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: context.height * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/upload.svg"),
                        SizedBox(
                          height: context.height * 0.02,
                        ),
                        const Text(
                          'Upload photo profile',
                          style:  TextStyle(
                            fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.015,
                ),
                const Divider(
                  color: Color(0xff027C90),
                  thickness: 1.5,
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Full name //
                    const Text(
                      'Full name',
                      style: TextStyle(
                        fontFamily: 'Pop',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      
                    ),
                    SizedBox(
                      height: context.height * 0.01,
                    ),
                    Container(
                      height: context.height * 0.06,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(2, 124, 144, 0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff027C90)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: context.height * 0.01,
                            horizontal: context.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.04,
                    ),
                    // Phone number(additional) //
                    const Text(
                      'Phone number(additional)',
                      style: TextStyle(
                        fontFamily: 'Pop',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      
                    ),
                    SizedBox(
                      height: context.height * 0.01,
                    ),
                    Container(
                      height: context.height * 0.06,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(2, 124, 144, 0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff027C90)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: context.height * 0.01,
                            horizontal: context.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.04,
                    ),
                    // Gender //
                    const Text(
                      'Gender',
                      style:  TextStyle(
                        fontFamily: 'Pop',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      
                    ),
                    SizedBox(
                      height: context.height * 0.01,
                    ),
                    Container(
                      height: context.height * 0.06,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(2, 124, 144, 0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: SvgPicture.asset("assets/arrow_down.svg"),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff027C90)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: context.height * 0.01,
                            horizontal: context.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.04,
                    ),
                    // Date of birth //
                    const Text(
                      'Date of birth',
                      style:  TextStyle(
                        fontFamily: 'Pop',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      
                    ),
                    SizedBox(
                      height: context.height * 0.01,
                    ),
                    Container(
                      height: context.height * 0.06,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(2, 124, 144, 0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff027C90)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: context.height * 0.01,
                            horizontal: context.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.height * 0.04,
                    ),
                    // Region //
                    const Text(
                      'Region',
                      style:  TextStyle(
                        fontFamily: 'Pop',
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      
                    ),
                    SizedBox(
                      height: context.height * 0.01,
                    ),
                    Container(
                      height: context.height * 0.06,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(2, 124, 144, 0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff027C90)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: context.height * 0.01,
                            horizontal: context.width * 0.04,
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
                        onPressed: () {},
                        child: const Text(
                          "Confirm",
                          style: TextStyle(
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
