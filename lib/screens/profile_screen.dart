import 'package:flutter/material.dart';
import 'package:sara_store/constants.dart';
import 'package:sara_store/screens/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _status = false;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController =
      TextEditingController(text: 'Demo User');

  TextEditingController addressController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  TextEditingController stateController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addressController.text = 'Dhangadi, Kailali';
    mobileController.text = '98656374372';
    pinCodeController.text = 'null';
    stateController.text = 'null';
  }

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
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 25.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 25.0,
                                top: 25.0,
                                right: 25.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Personal Information',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xffff85b2),
                                      radius: 14.0,
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                        size: 16.0,
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        _status = true;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 25.0,
                                right: 25.0,
                                top: 25.0,
                              ),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text(
                                        'Full Name',
                                        style: appTextStyle(
                                          FontWeight.bold,
                                          16.0,
                                          kTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 25.0,
                                right: 25.0,
                                top: 2.0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: TextField(
                                      decoration: InputDecoration(),
                                      enabled: _status,
                                      autofocus: _status,
                                      controller: nameController,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 25.0,
                                right: 25.0,
                                top: 25.0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Address',
                                        style: appTextStyle(
                                          FontWeight.bold,
                                          16.0,
                                          kTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 25.0,
                                right: 25.0,
                                top: 2.0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: TextField(
                                      decoration: InputDecoration(),
                                      enabled: _status,
                                      autofocus: _status,
                                      controller: addressController,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 25.0,
                                right: 25.0,
                                top: 25.0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      new Text(
                                        'Contact Number',
                                        style: appTextStyle(
                                          FontWeight.bold,
                                          16.0,
                                          kTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  new Flexible(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Enter Mobile Number"),
                                      enabled: _status,
                                      controller: mobileController,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        'Pin Code',
                                        style: appTextStyle(
                                          FontWeight.bold,
                                          16.0,
                                          kTextColor,
                                        ),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        'State',
                                        style: appTextStyle(
                                          FontWeight.bold,
                                          16.0,
                                          kTextColor,
                                        ),
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 2.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: new TextField(
                                        decoration: const InputDecoration(
                                          hintText: "Enter Pin Code",
                                        ),
                                        enabled: _status,
                                        controller: pinCodeController,
                                      ),
                                    ),
                                    flex: 2,
                                  ),
                                  Flexible(
                                    child: new TextField(
                                      decoration: const InputDecoration(
                                        hintText: "Enter State",
                                      ),
                                      enabled: _status,
                                      controller: stateController,
                                    ),
                                    flex: 2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
