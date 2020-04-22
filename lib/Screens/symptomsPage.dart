import 'package:kawalcovid/Widgets/symptomsItems.dart';
import 'package:flutter/material.dart';

class SymptomsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gejala",
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
              child: SymptomsItems(),
            ),
            Image.asset('assets/images/symptomMain.jpg'),
            Container(
              padding: EdgeInsets.all(24.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              "Infeksi virus Corona atau COVID-19 bisa menyebabkan penderitanya mengalami gejala flu, seperti demam, pilek, batuk, sakit tenggorokan, dan sakit kepala; atau gejala penyakit infeksi pernapasan berat, seperti demam tinggi, batuk berdahak bahkan berdarah, sesak napas, dan nyeri dada.",
                          style: Theme.of(context)
                              .textTheme
                              .body1
                              .copyWith(fontSize: 16.0),
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
                          launchUrl("https://www.alodokter.com/virus-corona");
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
            )
          ],
        ),
      ),
    );
  }
}
