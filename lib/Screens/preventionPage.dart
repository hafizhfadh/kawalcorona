import 'package:kawalcovid/Widgets/symptomsItems.dart';
import 'package:flutter/material.dart';

class PreventioPage extends StatefulWidget {
  @override
  _PreventioPageState createState() => _PreventioPageState();
}

class _PreventioPageState extends State<PreventioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pencegahan",
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.lightBlue,
              child: PreventionItems(),
            ),
            Image.asset('assets/images/doctor1.jpg'),
            Container(
              padding: EdgeInsets.all(24.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              "Hingga saat ini, belum ada pengobatan yang dapat menyembuhkan infeksi virus Corona. Oleh sebab itu, Organisasi Kesehatan Dunia (WHO) mengimbau agar masyarakat tidak memandang sepele penyakit ini dan senantiasa melakukan tindakan pencegahan. Salah satunya adalah dengan menerapkan social distancing.",
                          style: Theme.of(context).textTheme.subhead,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: FlatButton.icon(
                        onPressed: () {
                          launchUrl("https://www.alodokter.com/ketahui-cara-untuk-mencegah-penularan-virus-corona");
                        },
                        icon: Icon(Icons.open_in_new, color: Colors.white),
                        label: Text(
                          "Read More",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 32.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
