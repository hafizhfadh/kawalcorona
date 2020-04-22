import 'package:kawalcovid/Widgets/homeNavItems.dart';
import 'package:kawalcovid/Widgets/requirements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.lightBlue,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: width,
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Text(
                                'LAWAN COVID - 19 ',
                                style: Theme.of(context).textTheme.title.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Container(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24.0, vertical: 16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Pencegahan Dasar",
                                          style: Theme.of(context).textTheme.title,
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(
                                          "Membantu Anda mencegah virus dengan lebih baik",
                                          style: Theme.of(context).textTheme.caption,
                                        ),
                                        SizedBox(
                                          height: 16.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Requirements(),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 32.0,
                            ),
                            HomeNavItems(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
