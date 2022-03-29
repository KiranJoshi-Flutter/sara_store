import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:sara_store/constants.dart';
import 'package:sara_store/functions.dart';

List<String> imgList = [
  'https://www.gizmochina.com/wp-content/uploads/2020/01/Xiaomi-Mi-10-Pro-5G-1-500x500.jpg',
  'https://i01.appmifile.com/webfile/globalimg/in/cms/D1301D76-E04D-EF09-6195-53229DE6D543.jpg',
  'https://img.gkbcdn.com/p/2020-04-28/Xiaomi-Mi-10-Lite-6-57-Inch-5G-Smartphone-6GB-128GB-Gray-903190-._w500_.jpg',
];

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _current = 0;

  List<Container> imageSliders = imgList
      .map(
        (item) => Container(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            //color: Hexcolor("#ffa797ff"),
            margin: EdgeInsets.all(0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Stack(
                children: <Widget>[
                  FutureBuilder(
                    future: imageURLCheck(item),
                    builder: (context, asyncSnapshot) {
                      if (asyncSnapshot.hasData) {
                        print("ITEM = $item");
                        if (asyncSnapshot.data != null) {
                          return Image.network(item,
                              fit: BoxFit.fitHeight, width: 1000.0);
                        } else {
                          return Hero(
                            tag: generateRandomString(16),
                            child: Image.asset(
                              "assets/icons/no_image.png",
                            ),
                          );
                        }
                      } else {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: CircularProgressIndicator(
                                  backgroundColor: kGradientSecondary,
                                  strokeWidth: 1,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    kGradientTertiary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      )
      .toList();

  bool isWishlist = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 0.5,
        flexibleSpace: Container(
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
        title: Text(
          'Turtle Sticks',
          style: appTextStyle(
            FontWeight.w500,
            20.0,
            Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 0.0,
        ),
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(
            top: 16.0,
          ),
          color: Color(0xffffffff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  CarouselSlider(
                    items: imageSliders,
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      aspectRatio: 1.8,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            _current = index;
                          },
                        );
                      },
                    ),
                  ),
                  Positioned(
                    right: 16,
                    bottom: 0,
                    child: Container(
                      height: 54,
                      width: 54,
                      child: IconButton(
                        icon: Icon(
                          isWishlist
                              ? Icons.favorite_border
                              : Icons.favorite_border_rounded,
                          color: Colors.red,
                        ),
                        onPressed: () async {
                          // var userLoggedIn =
                          // await UserPreferences
                          //     .getLoginStatus();
                          // var token = await UserPreferences
                          //     .getToken();
                          //
                          // if (userLoggedIn) {
                          //   print(userLoggedIn);
                          //   if (isWishlist) {
                          //     print('removed');
                          //     var snackBar = snackBarMessage(
                          //       context,
                          //       'Removing item from the wishlist...',
                          //       Duration(
                          //         hours: 1,
                          //       ),
                          //     );
                          //     var headers = {
                          //       'Authorization':
                          //       'Bearer $token'
                          //     };
                          //     var request = http.Request(
                          //         'GET',
                          //         Uri.parse(
                          //             '$baseURL/user/wishlist/remove/${widget.productId}'));
                          //
                          //     request.headers.addAll(headers);
                          //
                          //     http.StreamedResponse response =
                          //     await request.send();
                          //
                          //     if (response.statusCode ==
                          //         200) {
                          //       snackBar.close();
                          //
                          //       snackBarMessageWithAction(
                          //         context,
                          //         AppLocalizations.of(context)
                          //             .translate(
                          //             'str_delete_item_wishlist_msg'),
                          //         Duration(
                          //           seconds: 3,
                          //         ),
                          //         AppLocalizations.of(context)
                          //             .translate(
                          //             'str_go_to_wishlist'),
                          //             () {
                          //           Navigator.push(
                          //             context,
                          //             MaterialPageRoute(
                          //               builder: (context) =>
                          //                   Wishlist(),
                          //             ),
                          //           );
                          //         },
                          //       );
                          //     } else {
                          //       snackBar.close();
                          //
                          //       toastMessage(
                          //         AppLocalizations.of(context)
                          //             .translate(
                          //             'str_something_went_wrong'),
                          //         kLogoRed,
                          //         context,
                          //       );
                          //       print(response.reasonPhrase);
                          //     }
                          //   } else {
                          //     print('added');
                          //     var snackBar = snackBarMessage(
                          //       context,
                          //       'Adding item to the wishlist...',
                          //       Duration(
                          //         hours: 1,
                          //       ),
                          //     );
                          //     var headers = {
                          //       'Authorization':
                          //       'Bearer $token'
                          //     };
                          //     var request = http.Request(
                          //         'GET',
                          //         Uri.parse(
                          //             '$baseURL/user/wishlist/add/${widget.productId}'));
                          //
                          //     request.headers.addAll(headers);
                          //
                          //     http.StreamedResponse response =
                          //     await request.send();
                          //
                          //     if (response.statusCode ==
                          //         200) {
                          //       snackBar.close();
                          //       snackBarMessageWithAction(
                          //         context,
                          //         AppLocalizations.of(context)
                          //             .translate(
                          //             'str_add_item_wishlist_msg'),
                          //         Duration(
                          //           seconds: 3,
                          //         ),
                          //         AppLocalizations.of(context)
                          //             .translate(
                          //             'str_go_to_wishlist'),
                          //             () {
                          //           Navigator.push(
                          //             context,
                          //             MaterialPageRoute(
                          //               builder: (context) =>
                          //                   Wishlist(),
                          //             ),
                          //           );
                          //         },
                          //       );
                          //     } else {
                          //       snackBar.close();
                          //
                          //       toastMessage(
                          //         AppLocalizations.of(context)
                          //             .translate(
                          //             'str_something_went_wrong'),
                          //         kLogoRed,
                          //         context,
                          //       );
                          //     }
                          //   }
                          //   setState(() {
                          //     isWishlist = !isWishlist;
                          //     print(
                          //         'isWishlist = $isWishlist');
                          //   });
                          // } else {
                          //   print('reqire to login first');
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => Login(
                          //         titlePage: AppLocalizations
                          //             .of(context)
                          //             .translate(
                          //             'str_user_login'),
                          //       ),
                          //     ),
                          //   );
                          // }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map(
                  (url) {
                    int index = imgList.indexOf(url);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Color.fromRGBO(0, 0, 0, 0.9)
                            : Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    );
                  },
                ).toList(),
              ),
              Container(
                margin: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                height: 0.5,
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
              Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'AQUAGRACE Aquarium Filter SS6005FA',
                  softWrap: true,
                  style: appTextStyle(
                    FontWeight.w600,
                    20.0,
                    kTextColor,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            'Rs. 800 /-',
                            softWrap: true,
                            style: appTextStyle(
                              FontWeight.bold,
                              22.0,
                              kTextColor.withOpacity(0.8),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      icon: Icon(Icons.share),
                      iconSize: 24.0,
                      onPressed: () async {},
                    ),
                  ],
                ),
              ),
              ExpansionTile(
                collapsedIconColor: kGradientPrimary,
                iconColor: kLogoBlur,
                initiallyExpanded: true,
                title: Text(
                  'Product Description',
                  style: appTextStyle(
                    FontWeight.bold,
                    16.0,
                    kTextColor,
                  ),
                ),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 8, left: 16, right: 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Html(
                        data: 'check',
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                collapsedIconColor: kGradientPrimary,
                iconColor: kLogoBlur,
                title: Text(
                  'Seller Info',
                  style: appTextStyle(
                    FontWeight.bold,
                    16.0,
                    kTextColor,
                  ),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Shop_name',
                      style: appTextStyle(
                        FontWeight.w500,
                        14.0,
                        kTextColor,
                      ),
                    ),
                    subtitle: Text(
                      'Pets Home',
                      style: appTextStyle(
                        FontWeight.normal,
                        12.0,
                        kTextColor,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Owner Home',
                      style: appTextStyle(
                        FontWeight.w500,
                        14.0,
                        kTextColor,
                      ),
                    ),
                    subtitle: Text(
                      'Shankhu Karna Shrestha',
                      style: appTextStyle(
                        FontWeight.normal,
                        12.0,
                        kTextColor,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Address',
                      style: appTextStyle(
                        FontWeight.w500,
                        14.0,
                        kTextColor,
                      ),
                    ),
                    subtitle: Text(
                      'Binayak Path, Dharan-09',
                      style: appTextStyle(
                        FontWeight.normal,
                        12.0,
                        kTextColor,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GFButton(
                        textStyle: appTextStyle(
                          FontWeight.bold,
                          12.0,
                          kGradientPrimary,
                        ),
                        onPressed: () {},
                        text: 'Visit the store',
                        shape: GFButtonShape.square,
                        type: GFButtonType.outline,
                        color: kGradientPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_cart_outlined,
          size: 20.0,
        ),
        label: Text(
          'Add to cart',
          style: appTextStyle(
            FontWeight.w600,
            14.0,
            Colors.white,
          ),
        ),
        // icon: Icon(Icons.thumb_up),
        backgroundColor: kGradientPrimary,
      ),
    );
  }
}
