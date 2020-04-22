import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// Created by Hafizh Fadhlurrohman on 27/03/20.
/// Al Wafi Islamic Boarding School
/// hafizhfadh@gmail.com

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Informasi Aplikasi",
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/doctor1.jpg'),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'Dengan informasi ini saya sampaikan,\n\n',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                            'Aplikasi ini hanya bertujuan memberikan informasi mengenai COVID-19, seluruh informasi yang di sajikan di dalam aplikasi ini hanya bertujuan untuk memberikan informasi tambahan. Segala informasi yang ada di dalam aplikasi ini tidak dapat di jadikan sebagai rujukan atau memperkuat informasi lain apapun. \n\n',
                          ),
                          TextSpan(
                            text:
                            'Sebuah informasi dapat di katakan valid apabila informasi tersebut berasal dari pemerintah atau lembaga kedokteran terkait.\n\n',
                          ),
                          TextSpan(
                            text:
                            'Dibawah ini adalah beberapa link website untuk mendapatkan informasi mengenai COVID-19 dari pemerintah atau lembaga-lembaga terkait:\n',
                          ),
                          TextSpan(
                            text: 'Kementrian Kesehatan\n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              launchUrl('https://infeksiemerging.kemkes.go.id/');
                            },
                          ),
                          TextSpan(
                            text: 'Unicef Indonesia\n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              launchUrl('https://www.unicef.org/indonesia/id/coronavirus');
                            },
                          ),
                          TextSpan(
                            text: 'WHO\n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              launchUrl('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public');
                            },
                          ),
                          TextSpan(
                            text: 'Daftar 100 Rumah Sakit Rujukan\n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              launchUrl('https://www.kompas.com/tren/read/2020/03/03/183500265/infografik-daftar-100-rumah-sakit-rujukan-penanganan-virus-corona');
                            },
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.right,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'Salam Hangat,\n',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'Hafizh Fadhlurrohman\n',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              launchUrl('https:github.com/hafizhfadh');
                            },
                          ),
                          TextSpan(
                            text: 'Mobile Flutter Developer Team\n',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void launchUrl(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
