import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';
import 'package:mobile_design_project_second/view/pages/specialist_doctor2.dart';
import 'package:mobile_design_project_second/view/screens/BottomNavigationBar/bottom_navigation_bar.dart';

class SpecialistDoctor extends StatefulWidget {
  const SpecialistDoctor({super.key});

  @override
  State<SpecialistDoctor> createState() => _SpecialistDoctorState();
}

class _SpecialistDoctorState extends State<SpecialistDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BottomNavigationPage()));
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.arrow_back,
              color: Color(0xff027C90),
            ),
          ),
        ),
        title: const Text(
          'Specialist Doctor',
          style: TextStyle(
            color: Color(0xff027C90),
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: context.width * 0.05),
            child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpecialistDoctor2())),
                child: SvgPicture.asset("assets/home_menu.svg")),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.width * 0.06,
              vertical: context.height * 0.03),
          child: Column(
            children: [
              ///////// Row 1 /////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///////// 1 /////////
                  Container(
                    width: context.width * 0.42,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(130, 172, 254, 1),
                          Color.fromRGBO(0, 73, 214, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.07,
                          vertical: context.height * 0.045),
                      child: Column(
                        children: <Widget>[
                          SvgPicture.asset("assets/tooth.svg"),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          const Text(
                            "Dental Surgeon",
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: context.height * 0.01,
                          ),
                          const Text(
                            '252 Doctors',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///////// 2 /////////
                  Container(
                    width: context.width * 0.42,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(254, 136, 136, 1),
                          Color.fromRGBO(202, 3, 3, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.085,
                          vertical: context.height * 0.043),
                      child: Column(
                        children: <Widget>[
                          SvgPicture.asset("assets/pools.svg"),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          const Text(
                            "Heart Surgeon",
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: context.height * 0.01,
                          ),
                          const Text(
                            '186 Doctors',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              ///////// Row 2 /////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///////// 3 /////////
                  Container(
                    width: context.width * 0.42,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 219, 125, 1),
                          Color.fromRGBO(218, 158, 2, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.085,
                          vertical: context.height * 0.045),
                      child: Column(
                        children: <Widget>[
                          SvgPicture.asset("assets/big_eye.svg"),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          const Text(
                            "Eye Specialist",
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: context.height * 0.01,
                          ),
                          const Text(
                            '186 Doctors',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///////// 4 /////////
                  Container(
                    width: context.width * 0.42,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(130, 172, 254, 1),
                          Color.fromRGBO(0, 73, 214, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.07,
                          vertical: context.height * 0.054),
                      child: Column(
                        children: <Widget>[
                          SvgPicture.asset("assets/tooth.svg"),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          const Text(
                            "Dental Surgeon",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: context.height * 0.01,
                          ),
                          const Text(
                            '252 Doctors',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              ///////// Row 3 /////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///////// 5 /////////
                  Container(
                    width: context.width * 0.42,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(254, 136, 136, 1),
                          Color.fromRGBO(202, 3, 3, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.08,
                          vertical: context.height * 0.04),
                      child: Column(
                        children: <Widget>[
                          SvgPicture.asset("assets/pools.svg"),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          const Text(
                            "Heart Surgeon",
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: context.height * 0.01,
                          ),
                          const Text(
                            '186 Doctors',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///////// 6 /////////
                  Container(
                    width: context.width * 0.42,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 219, 125, 1),
                          Color.fromRGBO(218, 158, 2, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.085,
                          vertical: context.height * 0.046),
                      child: Column(
                        children: <Widget>[
                          SvgPicture.asset("assets/big_eye.svg"),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          const Text(
                            "Eye Specialist",
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: context.height * 0.01,
                          ),
                          const Text(
                            '186 Doctors',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              ///////// Row 4 /////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///////// 7 /////////
                  Container(
                    width: context.width * 0.42,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(130, 172, 254, 1),
                          Color.fromRGBO(0, 73, 214, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.07,
                          vertical: context.height * 0.06),
                      child: Column(
                        children: <Widget>[
                          SvgPicture.asset("assets/tooth.svg"),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          const Text(
                            "Dental Surgeon",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: context.height * 0.01,
                          ),
                          const Text(
                            '252 Doctors',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///////// 8 /////////
                  Container(
                    width: context.width * 0.42,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(254, 136, 136, 1),
                          Color.fromRGBO(202, 3, 3, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.085,
                          vertical: context.height * 0.042),
                      child: Column(
                        children: <Widget>[
                          SvgPicture.asset("assets/pools.svg"),
                          SizedBox(
                            height: context.height * 0.02,
                          ),
                          const Text(
                            "Heart Surgeon",
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: context.height * 0.01,
                          ),
                          const Text(
                            '186 Doctors',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Pop',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
