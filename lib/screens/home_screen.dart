import 'package:animation_wrappers/animations/faded_slide_animation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sara_store/constants.dart';
import 'package:sara_store/functions.dart';
import 'package:sara_store/screens/product_detail_screen.dart';
import 'package:sara_store/screens/widgets/ads_widget.dart';
import 'package:sara_store/screens/widgets/header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sara Store',
          style: appTextStyle(
            FontWeight.w500,
            20.0,
            Colors.white,
          ),
        ),
        flexibleSpace: Container(
          // height: 100.0,
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
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
            70.0,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.zero,
                  child: TextFormField(
                    scrollPadding: EdgeInsets.zero,
                    // cursorColor: kLogoBlur,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: kGradientPrimary,
                          width: 0.0,
                        ),
                      ),
                      filled: true,
                      hintStyle: appTextStyle(
                        FontWeight.w500,
                        16.0,
                        // kDefaultColor,
                        Colors.black,
                      ),
                      hintText: "Search...",
                      fillColor: Colors.white,
                      // on
                      suffixIcon: InkWell(
                        child: Icon(
                          Icons.search,
                          size: 24,
                          // color: kDefaultColor2,
                          color: Colors.black,
                        ),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => NewSearchScreen(
                          //       productList: productList,
                          //     ),
                          //   ),
                          // );
                          // showSearch(
                          //   context: context,
                          //   delegate: SearchPage<Person>(
                          //     onQueryUpdate: (s) => print(s),
                          //     items: people,
                          //     searchLabel: 'Search item',
                          //     suggestion: Center(
                          //       child: Text(
                          //         'Search Product',
                          //       ),
                          //     ),
                          //     failure: Center(
                          //       child: Text('No product found :('),
                          //     ),
                          //     filter: (person) => [
                          //       person.name,
                          //       person.surname,
                          //       person.age.toString(),
                          //     ],
                          //     builder: (person) => ListTile(
                          //       title: Text(person.name),
                          //       subtitle: Text(person.surname),
                          //       trailing: Text('${person.age} yo'),
                          //     ),
                          //   ),
                          // );
                        },
                      ),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => NewSearchScreen(
                      //       productList: productList,
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              padding: EdgeInsets.all(
                16.0,
              ),
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
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GFAvatar(
                    radius: 33.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/icons/logo.png'),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Demo User',
                    style: appTextStyle(
                      FontWeight.bold,
                      16.0,
                      Colors.white,
                    ),
                  ),
                  Text(
                    'demo@demo.com',
                    style: appTextStyle(
                      FontWeight.bold,
                      14.0,
                      Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    title: Text(
                      'Home',
                      style: appTextStyle(
                        FontWeight.normal,
                        16.0,
                        kTextColor,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Shop By Category',
                      style: appTextStyle(
                        FontWeight.normal,
                        16.0,
                        kTextColor,
                      ),
                    ),
                  ),
                  Divider(
                    color: kDividerColor,
                  ),
                  ListTile(
                    title: Text(
                      'My Profile',
                      style: appTextStyle(
                        FontWeight.normal,
                        16.0,
                        kTextColor,
                      ),
                    ),
                    onTap: () async {},
                  ),
                  ListTile(
                    title: Text(
                      'My Orders',
                      style: appTextStyle(
                        FontWeight.normal,
                        16.0,
                        kTextColor,
                      ),
                    ),
                    onTap: () async {},
                  ),
                  ListTile(
                    title: Text(
                      'My Cart',
                      style: appTextStyle(
                        FontWeight.normal,
                        16.0,
                        kTextColor,
                      ),
                    ),
                    onTap: () async {},
                  ),
                  ListTile(
                    title: Text(
                      'My Wishlist',
                      style: appTextStyle(
                        FontWeight.normal,
                        16.0,
                        kTextColor,
                      ),
                    ),
                    onTap: () async {},
                  ),
                  Divider(
                    color: kDividerColor,
                  ),
                  ListTile(
                    title: Text(
                      'About Us',
                      style: appTextStyle(
                        FontWeight.normal,
                        16.0,
                        kTextColor,
                      ),
                    ),
                    onTap: () async {},
                  ),
                  ListTile(
                    title: Text(
                      'Settings',
                      style: appTextStyle(
                        FontWeight.normal,
                        16.0,
                        kTextColor,
                      ),
                    ),
                    onTap: () async {},
                  ),
                  ListTile(
                    title: Text(
                      'Logout',
                      style: appTextStyle(
                        FontWeight.normal,
                        16.0,
                        kTextColor,
                      ),
                    ),
                    onTap: () async {},
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 4.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: IconButton(
                        padding: EdgeInsets.all(8),
                        icon: new Image.asset('assets/icons/ic_facebook.png'),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: IconButton(
                        padding: EdgeInsets.all(8),
                        icon: new Image.asset('assets/icons/ic_instagram.png'),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: IconButton(
                        padding: EdgeInsets.all(8),
                        icon: new Image.asset('assets/icons/ic_twitter.png'),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: IconButton(
                        padding: EdgeInsets.all(8),
                        icon: new Image.asset('assets/icons/ic_youtube.png'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
      body: FadedSlideAnimation(
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselSlider.builder(
                      itemCount: 7,
                      itemBuilder: (
                        BuildContext context,
                        int itemIndex,
                        int pageViewIndex,
                      ) {
                        return GestureDetector(
                          onTap: (() {
                            // launchURL(snapshot
                            //     .data.homeScreen.sliders[itemIndex].link);
                          }),
                          child: Card(
                            elevation: 1.25,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(
                                  8.0,
                                ),
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.8),
                                    BlendMode.dstATop,
                                  ),
                                  image: NetworkImage(
                                    'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Expanded(
                                    // alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 100,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16.0,
                                      ),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(8.0),
                                          bottomRight: Radius.circular(8.0),
                                        ),
                                        gradient: LinearGradient(
                                          end: const Alignment(0.0, -1),
                                          begin: const Alignment(0.0, 0.4),
                                          colors: <Color>[
                                            const Color(0xAB000000),
                                            Colors.black87.withOpacity(
                                              0.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Get Up to 40% Off',
                                            style: appTextStyle(
                                              FontWeight.bold,
                                              16.0,
                                              Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'World Fashion',
                                            style: appTextStyle(
                                              FontWeight.w500,
                                              12.0,
                                              Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 16.0,
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
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 3.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                height: 30.0,
                width: double.infinity,
                // color: Colors.red,
                padding: EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shop By Category',
                      style: appTextStyle(
                        FontWeight.w600,
                        18.0,
                        kTextColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'View all',
                        style: appTextStyle(
                          FontWeight.bold,
                          14.0,
                          kGradientPrimary.withOpacity(0.75),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                height: 80.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 0.0,
                      color: Colors.transparent,
                      child: Container(
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.75,
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 16.0,
                          ),
                          child: Image.network(
                              'https://mayrasales.com/assets/images/categories/1601794932fashion.png'),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 4.0,
                    );
                  },
                  itemCount: 7,
                ),
              ),
              AdsWidget(
                ad1Url:
                    'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                ad2Url:
                    'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                onClickAd1: (() {}),
                onClickAd2: (() {}),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 8.0,
                  ),
                  HeaderWidget(
                    title: 'Premium Products',
                    onClick: () {},
                  ),
                  Container(
                    // child: Text("Abcd"),
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      physics: BouncingScrollPhysics(),
                      //   //controller: _scrollController,
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      itemBuilder: (context, index) {
                        var discount = 0;

                        return Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductDetailScreen(),
                                  ),
                                );
                              },
                              child: Stack(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1.02,
                                    child: Card(
                                      elevation: 0,
                                      color: Colors.transparent,
                                      child: Container(
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(
                                              16,
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 4.0,
                                            horizontal: 4.0,
                                          ),
                                          child: FutureBuilder(
                                            future: imageURLCheck(
                                                "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80"),
                                            builder: (context, asyncSnapshot) {
                                              if (asyncSnapshot.hasData) {
                                                if (asyncSnapshot.data !=
                                                    null) {
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(
                                                          16,
                                                        ),
                                                      ),
                                                      image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: NetworkImage(
                                                          'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg',
                                                        ),
                                                      ),
                                                    ),
                                                    // child: Image.network(
                                                    //   '$thumbnailBaseURL/${snapshot.data.homeScreen.premiumProducts[index].thumbnail}',
                                                    //   fit: BoxFit.cover,
                                                    // ),
                                                  );
                                                } else {
                                                  return Container(
                                                    child: CircleAvatar(
                                                      radius: 60,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      backgroundImage:
                                                          AssetImage(
                                                        "assets/images/no_image.png",
                                                      ),
                                                    ),
                                                  );
                                                }
                                              } else {
                                                return CupertinoActivityIndicator(
                                                  radius: 5,
                                                );
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 8.0,
                  ),
                  HeaderWidget(
                    title: 'Big Saves',
                    onClick: (() {}),
                  ),
                  Container(
                    // child: Text("Abcd"),
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      physics: BouncingScrollPhysics(),
                      //   //controller: _scrollController,
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      itemBuilder: (context, index) {
                        var discount = 0;

                        return GestureDetector(
                          onTap: () {},
                          child: Card(
                            elevation: 1,
                            margin: EdgeInsets.only(
                              right: 16.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  16,
                                ),
                                // color: kGradientPrimary,
                              ),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Stack(
                                      children: [
                                        FutureBuilder(
                                          future: imageURLCheck(
                                              "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80"),
                                          builder: (context, asyncSnapshot) {
                                            if (asyncSnapshot.hasData) {
                                              if (asyncSnapshot.data != null) {
                                                return Container(
                                                  padding: EdgeInsets.symmetric(
                                                    vertical: 8.0,
                                                    horizontal: 8.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                        16.0,
                                                      ),
                                                      topRight: Radius.circular(
                                                        16.0,
                                                      ),
                                                    ),
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                        'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80',
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                return Center(
                                                  child: Container(
                                                    // color: Colors.black,
                                                    // width: 200,
                                                    child: CircleAvatar(
                                                      radius: 60,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      backgroundImage:
                                                          AssetImage(
                                                        "assets/images/no_image.png",
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                            } else {
                                              return Center(
                                                child:
                                                    CupertinoActivityIndicator(
                                                  radius: 5,
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                        Positioned(
                                          left: 0,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 0.0,
                                              top: 0.0,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 4.0,
                                              horizontal: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                // topRight:
                                                //     Radius
                                                //         .circular(
                                                //   16,
                                                // ),
                                                bottomRight: Radius.circular(
                                                  16,
                                                ),
                                                topLeft: Radius.circular(
                                                  16,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              '${discount.toInt()}% off',
                                              style: appTextStyle(
                                                FontWeight.bold,
                                                10,
                                                Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'check',
                                              style: appTextStyle(
                                                FontWeight.w500,
                                                14.0,
                                                kTextColor,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'check',
                                                  style: appTextStyle(
                                                    FontWeight.bold,
                                                    16.0,
                                                    kGradientPrimary,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'check',
                                                style: GoogleFonts.mukta(
                                                  color: Colors.red,
                                                  fontSize: 10.0,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 4.0,
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
                      },
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
