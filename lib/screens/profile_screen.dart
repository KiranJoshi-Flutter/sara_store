import 'package:flutter/material.dart';
import 'package:sara_store/constants.dart';
import 'package:sara_store/screens/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(
        context,
        'My Profile',
      ),
      body: Column(
        children: [
          Container(
            // height: 200.0,
            // width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  kGradientPrimary,
                  kGradientSecondary,
                  kGradientTertiary,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      minRadius: 60.0,
                      // backgroundColor: Color(0xffff85b2),
                      backgroundColor: Colors.white,
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://www.pngarts.com/files/6/User-Avatar-in-Suit-PNG.png'),
                          minRadius: 58,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Demo User',
                  style: appTextStyle(
                    FontWeight.bold,
                    22.0,
                    Colors.white,
                  ),
                ),
                Text(
                  'demo@email.com',
                  style: appTextStyle(
                    FontWeight.w500,
                    16.0,
                    Colors.white,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
