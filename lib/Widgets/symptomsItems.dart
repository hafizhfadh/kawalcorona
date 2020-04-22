import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SymptomsItems extends StatefulWidget {
  @override
  _SymptomsItemsState createState() => _SymptomsItemsState();
}

class _SymptomsItemsState extends State<SymptomsItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        getSymptomsItems(context, 'Demam'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Batuk'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Kelelahan'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Kesulitan dalam bernafas'),
        SizedBox(height: 16.0,),
      ],
    );
  }
}


class PreventionItems extends StatefulWidget {
  @override
  _PreventionItemsState createState() => _PreventionItemsState();
}

class _PreventionItemsState extends State<PreventionItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        getSymptomsItems(context, 'Cuci tangan sesering mungkin'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Batuk ke siku'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, "Jangan menyentuh wajahmu"),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Jaga jarak aman'),
        SizedBox(height: 16.0,),
        getSymptomsItems(context, 'Tetap di rumah jika Anda bisa'),
        SizedBox(height: 16.0,),
        
      ],
    );
  }
}

Widget getSymptomsItems(BuildContext context, String text) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(5.0))),
    child: ListTile(
      leading: Icon(
        Icons.error,
        color: Colors.amber,
      ),
      title: Text(
        text,
        style:
            Theme.of(context).textTheme.subhead.copyWith(color: Colors.white),
      ),
      trailing: Icon(
        Icons.chrome_reader_mode,
        color: Colors.white,
      ),
    ),
  );
}

void launchUrl(url) async{
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
