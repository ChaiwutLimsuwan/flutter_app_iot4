import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FoodshowUI extends StatefulWidget {
  String name = '';
  String website = '';
  String facebook = '';
  String mobile = '';
  String image = '';
  String gps = '';



  FoodshowUI({
    Key? key,
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
    required this.gps,
  }) : super(key: key);

  @override
  _FoodshowUIState createState() => _FoodshowUIState();
}

class _FoodshowUIState extends State<FoodshowUI> {

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE72A0D),
        title: Text(
          'รายละเอียดร้าน',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Image.asset(
                'assets/images/' + widget.image,
                width: 200.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                //height: 100.0,
                child: Card(
                  color: Color(0xFFE72A0D),
                  elevation: 10.0,
                  shadowColor: Colors.deepOrangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          12.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            Text(
                              '  NAME : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              widget.name,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          12.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.globeAsia,
                              color: Colors.white,
                            ),
                            Text(
                              '  WEBSITE : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              widget.website,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  FontAwesomeIcons.desktop,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          12.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                            ),
                            Text(
                              '  FACEBOOK : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              widget.facebook,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Like',
                                  style: TextStyle(
                                    color: Color(0x88F6F6F6),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          12.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.mobileAlt,
                              color: Colors.white,
                            ),
                            Text(
                              '  MOBILE : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              widget.mobile,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: (){
                      _launchInBrowser(
                        widget.website,
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.globeAsia,
                    ),
                    label: Text(
                      'เปิดเว็บ',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      fixedSize: Size(
                        120.0,
                        50.0,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      _makePhoneCall(
                        'tel:' + widget.mobile,
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.phone,
                    ),
                    label: Text(
                      'โทร',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      fixedSize: Size(
                        120.0,
                        50.0,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      _launchInBrowser(
                        widget.gps,
                      );
                    },
                    icon: Icon(
                      FontAwesomeIcons.mapMarked,
                    ),
                    label: Text(
                      'ที่ตั้งร้าน',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: Size(
                        120.0,
                        50.0,
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
