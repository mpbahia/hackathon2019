import 'package:e_agora/data/data_alert.dart';
import 'package:e_agora/ocorreViolencia.dart';
import 'package:e_agora/ocorrencia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Problemas extends StatelessWidget {
  final AlertButtons data;
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
                    "https://firebasestorage.googleapis.com/v0/b/e-agora-96429.appspot.com/o/roubo.png?alt=media&token=3ea678bd-e32f-40ca-b677-057058e8353f",
                    width: 60,
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
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Ocorrencia(this.data)));
          },
        ),
        InkWell(
          child: Card(
            color: Colors.cyan[300], //accentColor, //Colors.grey,
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
                    "https://firebasestorage.googleapis.com/v0/b/e-agora-96429.appspot.com/o/violencia.png?alt=media&token=25d1b468-d160-45c0-94bc-158da59119e7",
                    width: 60,
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Violência",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OcorreViolencia()));
          },
        ),
        Card(
          color: Colors.cyan[900], //Colors.red[600],
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
                  "https://firebasestorage.googleapis.com/v0/b/e-agora-96429.appspot.com/o/abuso.png?alt=media&token=609db33f-7246-4734-a2e7-df23dc168319",
                  width: 60,
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Assédio",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Card(
          color: accentColor, //Colors.orange,
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
                  "https://firebasestorage.googleapis.com/v0/b/e-agora-96429.appspot.com/o/acidente.png?alt=media&token=85103a76-d6df-4836-b840-e3f027b5f4aa",
                  width: 60,
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Acidente",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ],
    )

//  Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 padding: EdgeInsets.only(left: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     InkWell(
//                       child: CircleAvatar(
//                         radius: 45,
//                         backgroundColor: Colors.orange,
//                         backgroundImage: NetworkImage(
//                             "https://pictogram-illustration.com/material/251-pictogram-illustration.jpg"),
//                       ),
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Ocorrencia(this.data)));
//                       },
//                     ),
//                     FlatButton(
//                         child: Row(
//                           children: <Widget>[
//                             Text(data.titulo,
//                                 style: TextStyle(
//                                     color: hintColor,
//                                     fontWeight: FontWeight.w700,
//                                     fontFamily: "Poppins-Bold",
//                                     fontSize: 20,
//                                     letterSpacing: 1.0)),
//                             Text("\t\t"),
//                             Icon(Icons.volume_up),
//                           ],
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Ocorrencia(this.data)));
//                         })
//                   ],
//                 ),
//               ),
//               Container(
//                 child: Column(
//                   children: <Widget>[
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundColor: Colors.red[700],
//                       backgroundImage: NetworkImage(
//                           "https://firebasestorage.googleapis.com/v0/b/e-agora-96429.appspot.com/o/violencia.png?alt=media&token=25d1b468-d160-45c0-94bc-158da59119e7"),
//                     ),
//                     FlatButton(
//                         child: Row(
//                           children: <Widget>[
//                             Text("\tBrigas",
//                                 style: TextStyle(
//                                     color: hintColor,
//                                     fontFamily: "Poppins-Bold",
//                                     fontSize: 19,
//                                     letterSpacing: 1.0)),
//                             Text("\t\t"),
//                             Icon(Icons.volume_up),
//                           ],
//                         ),
//                         onPressed: () {})
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             children: <Widget>[
//               Container(
//                 padding: EdgeInsets.only(left: 38),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[Y
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundColor: Colors.pink,
//                       backgroundImage: NetworkImage(
//                           "https://firebasestorage.googleapis.com/v0/b/e-agora-96429.appspot.com/o/abuso.png?alt=media&token=609db33f-7246-4734-a2e7-df23dc168319"),
//                     ),
//                     FlatButton(
//                         child: Row(
//                           children: <Widget>[
//                             Text("Assédio",
//                                 style: TextStyle(
//                                     color: hintColor,
//                                     fontFamily: "Poppins-Bold",
//                                     fontSize: 19,
//                                     letterSpacing: 1.0)),
//                             Text("\t\t"),
//                             Icon(Icons.volume_up),
//                           ],
//                         ),
//                         onPressed: () {})
//                   ],
//                 ),
//               ),
//               Container(
//                 child: Cad)
//               ),
//             ],
//           ),
// InkWell(
        //   child: Container(
        //     width: ScreenUtil.getInstance().setWidth(200),
        //     height: ScreenUtil.getInstance().setHeight(100),
        //     decoration: BoxDecoration(
        //         gradient: LinearGradient(
        //             colors: [Colors.blue, Colors.blue[700]]),
        //         borderRadius: BorderRadius.circular(50.0),
        //         boxShadow: [
        //           BoxShadow(
        //               color: Color(0xFF6078ea).withOpacity(.3),
        //               offset: Offset(0.0, 9.0),
        //               blurRadius: 10.0)
        //         ]),
        //     child: Center(
        //         child: Column(
        //       children: <Widget>[
        //         //Icon(Icons.ac_unit),
        //         Row(
        //           children: <Widget>[
        //             Text(data.titulo,
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontFamily: "Poppins-Bold",
        //                     fontSize: 18,
        //                     letterSpacing: 1.0)),
        //             Text("\t\t"),
        //             Icon(Icons.volume_up),
        //           ],
        //         )
        //       ],
        //     )),
        //   ),
        //   onTap: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //             builder: (context) => Ocorrencia(this.data)));
        //   },
        // ),

        // FlatButton(
        //   color: Theme.of(context).primaryColor,
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => Ocorrencia(this.data)));
        //   },
        //   child: Text(data.titulo),
        // ));
        );
    // return InkWell(
    //   child: Card(
    //     margin: EdgeInsets.all(5),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: <Widget>[
    //         AspectRatio(
    //             aspectRatio: 0.80,
    //             child: Image.network(
    //               data.icone,
    //               fit: BoxFit.cover,
    //             )),
    //         Expanded(
    //           child: Container(
    //             padding: EdgeInsets.all(8.0),
    //             child: Column(
    //               children: <Widget>[
    //                 Text(
    //                   data.titulo,
    //                   style: TextStyle(
    //                       color: Theme.of(context).accentColor, fontSize: 13),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    //   onTap: () {
    //     Navigator.push(context,
    //         MaterialPageRoute(builder: (context) => Ocorrencia(this.data)));
    //   },
    // );
  }
}
