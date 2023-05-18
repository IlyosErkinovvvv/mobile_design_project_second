import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';
import 'package:mobile_design_project_second/view/screens/BottomNavigationBar/bottom_navigation_bar.dart';

class FavoriteDoctorPage extends StatefulWidget {
  const FavoriteDoctorPage({super.key});

  @override
  State<FavoriteDoctorPage> createState() => _FavoriteDoctorPageState();
}

class _FavoriteDoctorPageState extends State<FavoriteDoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavigationPage()));
              },
              child: const Icon(
                Icons.arrow_back,
                color: Color(0xff027C90),
              ),
            ),
          ),
        ),
        title: const Text(
          'Favorite Doctor',
          style: TextStyle(
            fontFamily: 'Pop',
            color: Color(0xff027C90),
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: context.width * 0.05),
            child: SvgPicture.asset("assets/home_menu.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.width * 0.05,
              vertical: context.height * 0.03),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Today, October 03 2022',
                      style: TextStyle(
                        fontFamily: 'Pop',
                        color: Color.fromRGBO(0, 0, 0, 0.71),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              //////////////// 1 ////////////////
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD9D9D9)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.03,
                      vertical: context.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 201, 201, 201),
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr. Stella Kane ',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/star.svg"),
                              SizedBox(
                                width: context.width * 0.02,
                              ),
                              const Text(
                                '4.5 (2421 reviews)',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Color.fromRGBO(0, 0, 0, 0.71),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: context.height * 0.005,
                          ),
                          const Text(
                            'Heart Surgeon - Hamilton Main \n Hospital.',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Color.fromRGBO(0, 0, 0, 0.71),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/like.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.025,
              ),
              //////////////// 2 ////////////////
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD9D9D9)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.03,
                      vertical: context.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 201, 201, 201),
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr. Mistry',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/star.svg"),
                              SizedBox(
                                width: context.width * 0.02,
                              ),
                              const Text(
                                '4.7 (3421 reviews)',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Color.fromRGBO(0, 0, 0, 0.71),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: context.height * 0.005,
                          ),
                          const Text(
                            'Emergency physicians - World \n Wide Hospital',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Color.fromRGBO(0, 0, 0, 0.71),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/like.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.025,
              ),
              //////////////// 3 ////////////////
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD9D9D9)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.03,
                      vertical: context.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 201, 201, 201),
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr. Brick',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/star.svg"),
                              SizedBox(
                                width: context.width * 0.02,
                              ),
                              const Text(
                                '3.6 (1021 reviews)',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Color.fromRGBO(0, 0, 0, 0.71),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: context.height * 0.005,
                          ),
                          const Text(
                            'Neurologists - Havai Smooth \n Hospital',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Color.fromRGBO(0, 0, 0, 0.71),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/like.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.025,
              ),
              //////////////// 4 ////////////////
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD9D9D9)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.03,
                      vertical: context.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 201, 201, 201),
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr. Ether',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/star.svg"),
                              SizedBox(
                                width: context.width * 0.02,
                              ),
                              const Text(
                                '4.7 (4856 reviews)',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Color.fromRGBO(0, 0, 0, 0.71),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: context.height * 0.005,
                          ),
                          const Text(
                            'Pediatricians - Ramsay Collage \n Hospital',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Color.fromRGBO(0, 0, 0, 0.71),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/like.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.025,
              ),
              //////////////// 5 ////////////////
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD9D9D9)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.03,
                      vertical: context.height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 201, 201, 201),
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dr. Joseph Cart',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/star.svg"),
                              SizedBox(
                                width: context.width * 0.02,
                              ),
                              const Text(
                                '5 (6475 reviews)',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Color.fromRGBO(0, 0, 0, 0.71),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: context.height * 0.005,
                          ),
                          const Text(
                            'Dental Surgeon - Parcini Spec \n Hospital',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Color.fromRGBO(0, 0, 0, 0.71),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SvgPicture.asset("assets/like.svg"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
