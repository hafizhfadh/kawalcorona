import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeNavItems extends StatefulWidget {
  @override
  _HomeNavItemsState createState() => _HomeNavItemsState();
}

class _HomeNavItemsState extends State<HomeNavItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            getHomePageNavItems(
                context: context,
                icon: Icons.mood_bad,
                title: 'Gejala',
                subTitle: 'Ketahui Gejalanya',
                navigate: 'symptoms'),
            SizedBox(
              width: 16.0,
            ),
            getHomePageNavItems(
                context: context,
                icon: FontAwesomeIcons.solidHospital,
                title: 'Pencegahan',
                subTitle: 'Cegah Sedari Dini',
                navigate: 'prevention'
                ),
          ],
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            getHomePageNavItems(
                context: context,
                icon: Icons.insert_chart,
                title: 'Laporan',
                subTitle: 'Data dan info terkait COVID-19',
                navigate: 'reports'
                ),
            SizedBox(
              width: 16.0,
            ),
            getHomePageNavItems(
                context: context,
                icon: FontAwesomeIcons.globeAmericas,
                title: 'Negara',
                subTitle: 'Negara terinfeksi COVID-19',
                navigate: 'countries'),
          ],
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            getHomePageNavItems(
                context: context,
                icon: Icons.info,
                title: 'Info Aplikasi',
                subTitle: 'Info Dasar Aplikasi Ini.',
                navigate: 'info'
            ),
          ],
        ),
      ],
    );
  }
}

Widget getHomePageNavItems(
    {BuildContext context, IconData icon, String title, String subTitle, String navigate}) {
  return Flexible(
    flex: 4,
    fit: FlexFit.tight,
    child: InkWell(
      onTap: (){
        navigate != null ? Navigator.pushNamed(context, '/$navigate') : print("No where to go") ;
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 32.0,
              color: Colors.amber,
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.caption.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 10.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
