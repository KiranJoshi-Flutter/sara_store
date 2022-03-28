import 'package:flutter/material.dart';

class AdsWidget extends StatefulWidget {
  AdsWidget({
    key,
    required this.ad1Url,
    required this.onClickAd1,
    required this.ad2Url,
    required this.onClickAd2,
  }) : super(key: key);

  final String ad1Url;
  final Function onClickAd1;
  final String ad2Url;
  final Function onClickAd2;

  @override
  _AdsWidgetState createState() => _AdsWidgetState();
}

class _AdsWidgetState extends State<AdsWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black45,
      padding: EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 16.0,
      ),
      child: Row(
        children: [
          widget.ad1Url.isNotEmpty
              ? Expanded(
                  child: GestureDetector(
                    onTap: () {
                      widget.onClickAd1;
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8,
                            ),
                          ),
                          image: DecorationImage(
                            image: NetworkImage('${widget.ad1Url}'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
          SizedBox(
            width: 16.0,
          ),
          widget.ad2Url.isNotEmpty
              ? Expanded(
                  child: GestureDetector(
                    onTap: () {
                      widget.onClickAd2;
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8,
                            ),
                          ),
                          image: DecorationImage(
                            image: NetworkImage('${widget.ad1Url}'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
