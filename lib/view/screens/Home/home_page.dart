import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';
import 'package:mobile_design_project_second/view/pages/favotire_doctor.dart';
import 'package:mobile_design_project_second/view/pages/specialist_doctor.dart';
import 'package:mobile_design_project_second/view/pages/top_doctor.dart';
import 'package:mobile_design_project_second/view/screens/BottomNavigationBar/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.width * 0.05,
              vertical: context.height * 0.03),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavigationPage()));
                      },
                      child: const Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'Pop',
                          color: Color(0xff027C90),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/bell.svg"),
                        SizedBox(
                          width: context.width * 0.05,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FavoriteDoctorPage()));
                            },
                            child: SvgPicture.asset("assets/like.svg")),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffF2F2F2),
                      hintText: 'Search for doctors',
                      hintStyle: TextStyle(),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.search),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Specialist Doctor',
                      style: TextStyle(
                        fontFamily: 'Pop',
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SpecialistDoctor()));
                      },
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontFamily: 'Pop',
                          color: Color(0xff027C90),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                // Slider Row //
                SizedBox(
                  height: context.height * 0.03,
                ),
                SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Slider Container 1 //
                        Container(
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
                                horizontal: context.width * 0.06,
                                vertical: context.height * 0.06),
                            child: Column(
                              children: <Widget>[
                                SvgPicture.asset("assets/tooth.svg"),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                const Text(
                                  """Dental
Surgeon""",
                                  style: TextStyle(
                                    fontFamily: 'Pop',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: context.width * 0.035,
                        ),
                        // Slider Container 2 //
                        Container(
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
                                horizontal: context.width * 0.06,
                                vertical: context.height * 0.06),
                            child: Column(
                              children: <Widget>[
                                SvgPicture.asset("assets/pools.svg"),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                const Text(
                                  """Heart
Surgeon""",
                                  style: TextStyle(
                                    fontFamily: 'Pop',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: context.width * 0.035,
                        ),
                        // Slider Container 3 //
                        Container(
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
                                horizontal: context.width * 0.05,
                                vertical: context.height * 0.066),
                            child: Column(
                              children: <Widget>[
                                SvgPicture.asset("assets/big_eye.svg"),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                const Text(
                                  """Eye
Specialist""",
                                  style: TextStyle(
                                    fontFamily: 'Pop',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: context.width * 0.035,
                        ),
                        // Slider Container 1 //
                        Container(
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
                                horizontal: context.width * 0.06,
                                vertical: context.height * 0.06),
                            child: Column(
                              children: <Widget>[
                                SvgPicture.asset("assets/tooth.svg"),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                const Text(
                                  """Dental
Surgeon""",
                                  style: TextStyle(
                                    fontFamily: 'Pop',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: context.width * 0.035,
                        ),
                        // Slider Container 2 //
                        Container(
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
                                horizontal: context.width * 0.06,
                                vertical: context.height * 0.06),
                            child: Column(
                              children: <Widget>[
                                SvgPicture.asset("assets/pools.svg"),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                const Text(
                                  """Heart
Surgeon""",
                                  style: TextStyle(
                                    fontFamily: 'Pop',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: context.width * 0.035,
                        ),
                        // Slider Container 3 //
                        Container(
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
                                horizontal: context.width * 0.05,
                                vertical: context.height * 0.066),
                            child: Column(
                              children: <Widget>[
                                SvgPicture.asset("assets/big_eye.svg"),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                const Text(
                                  """Eye
Specialist""",
                                  style: TextStyle(
                                    fontFamily: 'Pop',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Top Doctors',
                      style: TextStyle(
                        fontFamily: 'Pop',
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TopDoctor()));
                      },
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontFamily: 'Pop',
                          color: Color(0xff027C90),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.025,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // Slider Second Container 1 //
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 23, right: 27, left: 27, bottom: 12),
                          child: Column(
                            children: [
                              Image.asset("assets/woman.png"),
                              SizedBox(
                                height: context.height * 0.02,
                              ),
                              const Text(
                                'Dr. Stella Kane',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: context.height * 0.01,
                              ),
                              const Text(
                                'Heart Surgeon ',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Color.fromRGBO(0, 0, 0, 0.71),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.width * 0.030,
                      ),
                      // Slider Second Container 2 //
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 19, right: 27, left: 27, bottom: 10),
                          child: Column(
                            children: [
                              Image.asset("assets/male.png"),
                              SizedBox(
                                height: context.height * 0.02,
                              ),
                              const Text(
                                'Dr. Joseph Cart',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: context.height * 0.01,
                              ),
                              const Text(
                                'Dental Surgeon ',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Color.fromRGBO(0, 0, 0, 0.71),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.width * 0.030,
                      ),
                      // Slider Second Container 1 //
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 23, right: 27, left: 27, bottom: 12),
                          child: Column(
                            children: [
                              Image.asset("assets/woman.png"),
                              SizedBox(
                                height: context.height * 0.02,
                              ),
                              const Text(
                                'Dr. Stella Kane',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: context.height * 0.01,
                              ),
                              const Text(
                                'Heart Surgeon ',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Color.fromRGBO(0, 0, 0, 0.71),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.width * 0.030,
                      ),
                      // Slider Second Container 2 //
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 19, right: 27, left: 27, bottom: 10),
                          child: Column(
                            children: [
                              Image.asset("assets/male.png"),
                              SizedBox(
                                height: context.height * 0.02,
                              ),
                              const Text(
                                'Dr. Joseph Cart',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: context.height * 0.01,
                              ),
                              const Text(
                                'Dental Surgeon ',
                                style: TextStyle(
                                  fontFamily: 'Pop',
                                  color: Color.fromRGBO(0, 0, 0, 0.71),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ],
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Recommendation',
                      style: TextStyle(
                        fontFamily: 'Pop',
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontFamily: 'Pop',
                        color: Color(0xff027C90),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
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
