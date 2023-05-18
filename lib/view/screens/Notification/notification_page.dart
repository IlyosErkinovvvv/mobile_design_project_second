import 'package:flutter/material.dart';
import 'package:mobile_design_project_second/core/extension/context_size.dart';
import 'package:mobile_design_project_second/view/screens/BottomNavigationBar/bottom_navigation_bar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
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
          'Notification',
          style: TextStyle(
            fontFamily: 'Pop',
            color: Color(0xff027C90),
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
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
              // Notifications Container 1 //
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.03,
                      vertical: context.height * 0.02),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 201, 201, 201),
                        radius: 30,
                      ),
                      SizedBox(
                        width: context.width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Appointment  Alarm',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.005,
                          ),
                          const Text(
                            'Your appointment will be start after 15 \n minutes. Sstay with app and take care.',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.025,
              ),
              // Notifications Container 2 //
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.03,
                      vertical: context.height * 0.02),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 201, 201, 201),
                        radius: 30,
                      ),
                      SizedBox(
                        width: context.width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Appointment  Confirmed',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.005,
                          ),
                          const Text(
                            'Appointment confirmed Dr. Joseph \n Cart. call will be held at 11:00 \n AM | 03 Oct 22.',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
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
              // Notifications Container 1 //
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.03,
                      vertical: context.height * 0.02),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 201, 201, 201),
                        radius: 30,
                      ),
                      SizedBox(
                        width: context.width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'New Features Available',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.005,
                          ),
                          const Text(
                            'Now you can mirror video while on \n video call',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
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
              // Notifications Container 1 //
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.03,
                      vertical: context.height * 0.02),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 201, 201, 201),
                        radius: 30,
                      ),
                      SizedBox(
                        width: context.width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Appointment  Alarm',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.005,
                          ),
                          const Text(
                            'Your appointment will be start after 15 \n minutes. Sstay with app and take care.',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              // Notifications Container 2 //
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.03,
                      vertical: context.height * 0.02),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 201, 201, 201),
                        radius: 30,
                      ),
                      SizedBox(
                        width: context.width * 0.06,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Appointment  Confirmed',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.005,
                          ),
                          const Text(
                            'Appointment confirmed Dr. Joseph \n Cart. call will be held at 11:00 \n AM | 03 Oct 22.',
                            style: TextStyle(
                              fontFamily: 'Pop',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
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
