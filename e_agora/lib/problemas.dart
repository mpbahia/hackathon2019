import 'package:e_agora/ocorrencia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Problemas extends StatelessWidget {
  final data;
  Problemas(this.data);

  @override
  Widget build(BuildContext context) {
    final accentColor = Theme.of(context).accentColor;
    final primaryColor = Theme.of(context).primaryColor;
    final hintColor = Theme.of(context).hintColor;

    final a = Colors.cyan[400];

    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Container(
        child: Column(
      children: <Widget>[
        InkWell(
          child: Card(
            color: Colors.cyan[200], //accentColor,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.cyan[200],
                Colors.cyan[300],
                Colors.cyan[400],
                Colors.cyan[500],
                Colors.cyan[600],
                Colors.cyan[800],
              ])),
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Image.network(
                    data.icone,
                    width: 50,
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      data.titulo,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    ),
                  ),
                  Spacer(),
                  Spacer()
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Ocorrencia(this.data)));
          },
        ),
      ],
    ));
  }
}
