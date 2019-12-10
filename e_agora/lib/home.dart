import 'dart:io';
import 'package:e_agora/data/data_problemas.dart';
import 'package:e_agora/noticias.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_agora/ocorrencia.dart';
import 'package:e_agora/problemas.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    final accentColor = Theme.of(context).accentColor;
    final primaryColor = Theme.of(context).primaryColor;
    final hintColor = Theme.of(context).hintColor;
    final a = Colors.cyan[400];
    void alert() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                elevation: 9.0,
                backgroundColor: primaryColor,
                actions: <Widget>[
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          "OK",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: accentColor,
                            fontSize: 15,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  )
                ],
                title: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Função futuramente implementavél!",
                    style: TextStyle(color: accentColor),
                    textAlign: TextAlign.center,
                  ),
                ));
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E agora?",
          style: TextStyle(
              color: primaryColor, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: accentColor,
        actions: <Widget>[
          ButtonBar(
            children: <Widget>[
              InkWell(
                child: Icon(Icons.search, color: primaryColor),
                onTap: () {
                  alert();
                },
              )
            ],
          )
        ],
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: accentColor,
                ),
                child: Image.network(
                    "http://www.mp.ba.gov.br/sites/default/files/logo_mp_0.png")),
            ListTile(
                title: Text("Delegacia de Furtos e Roubos",
                    style: TextStyle(color: hintColor)),
                leading: Icon(Icons.accessibility, color: Colors.black),
                onTap: () {
                  launch(
                      "https://maps.app.goo.gl/?link=https://www.google.com/maps/place//data%3D!4m2!3m1!1s0x716054f9d62acaf:0xf05527e6fa248c6d?utm_source%3Dmstt_1&apn=com.google.android.apps.maps&afl=https://www.google.com/maps/place//data%3D!4m2!3m1!1s0x716054f9d62acaf:0xf05527e6fa248c6d?utm_source%3Dmstt_1&ibi=com.google.Maps&ius=comgooglemapsurl&isi=585027354&ifl=https://www.google.com/maps/place//data%3D!4m2!3m1!1s0x716054f9d62acaf:0xf05527e6fa248c6d?utm_source%3Dmstt_1");
                }),
            ListTile(
                title: Text("Delegacia da Mulher",
                    style: TextStyle(color: hintColor)),
                leading: Icon(Icons.local_hospital, color: Colors.red[700]),
                onTap: () {
                  launch(
                      "https://maps.app.goo.gl/?link=https://www.google.com/maps/place//data%3D!4m2!3m1!1s0x7163e112ef92b1b:0xe4f7742062a94e13?utm_source%3Dmstt_1&apn=com.google.android.apps.maps&afl=https://www.google.com/maps/place//data%3D!4m2!3m1!1s0x7163e112ef92b1b:0xe4f7742062a94e13?utm_source%3Dmstt_1&ibi=com.google.Maps&ius=comgooglemapsurl&isi=585027354&ifl=https://www.google.com/maps/place//data%3D!4m2!3m1!1s0x7163e112ef92b1b:0xe4f7742062a94e13?utm_source%3Dmstt_1");
                }),
            ListTile(
                title: Text("Defensoria Pública",
                    style: TextStyle(color: hintColor)),
                leading: Icon(Icons.gavel, color: accentColor),
                onTap: () {
                  launch("https://maps.app.goo.gl/TtUndz67oupNCZac9");
                }),
            ListTile(
                title: Text("Conselho Tutelar",
                    style: TextStyle(color: hintColor)),
                leading: Icon(Icons.face, color: Colors.purple),
                onTap: () {
                  launch("https://maps.app.goo.gl/H9vPUutABYQJdwFD8");
                }),
            ListTile(
                title: Text("Corpo de Bombeiros",
                    style: TextStyle(color: hintColor)),
                leading: Icon(Icons.local_hospital, color: Colors.red[700]),
                onTap: () {
                  launch(
                      "https://maps.app.goo.gl/?link=https://www.google.com/maps/place//data%3D!4m2!3m1!1s0x7163e112ef92b1b:0xe4f7742062a94e13?utm_source%3Dmstt_1&apn=com.google.android.apps.maps&afl=https://www.google.com/maps/place//data%3D!4m2!3m1!1s0x7163e112ef92b1b:0xe4f7742062a94e13?utm_source%3Dmstt_1&ibi=com.google.Maps&ius=comgooglemapsurl&isi=585027354&ifl=https://www.google.com/maps/place//data%3D!4m2!3m1!1s0x7163e112ef92b1b:0xe4f7742062a94e13?utm_source%3Dmstt_1");
                }),
            Divider(
              height: 10,
            ),
            ListTile(
                title: Text("Sobre", style: TextStyle(color: hintColor)),
                leading: Icon(Icons.info, color: accentColor),
                onTap: () {}),
            ListTile(
                title: Text("Avaliação", style: TextStyle(color: hintColor)),
                leading: Icon(Icons.star, color: accentColor),
                onTap: () {
                  launch(
                      "https://docs.google.com/forms/d/1sUdtKR62_jhXoOxT6jrN_HeaezOG86WWCE4jF1HsBXI/edit?usp=sharing");
                }),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: accentColor,
        currentIndex: _selectedPage,
        onTap: (index) {
          setState(() {
            if (index == 0) {
              alert();
              //launch('https://www.handtalk.me/');
            } else if (index == 1) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Noticias()));
            } else if (index == 2) {
              alert();
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text(
              "Libras",
              style: TextStyle(fontSize: 1, color: accentColor),
            ),
            icon: Image.network(
              "https://firebasestorage.googleapis.com/v0/b/e-agora-96429.appspot.com/o/1573283043345.png?alt=media&token=776eec9e-8f09-46df-ad46-2413699f54e5",
              height: 60,
            ),
          ),
          BottomNavigationBarItem(
              title: Text(
                "Libras",
                style: TextStyle(fontSize: 1, color: accentColor),
              ),
              icon: Icon(
                Icons.subtitles,
                size: 59,
                color: primaryColor,
              )),
          BottomNavigationBarItem(
              title: Text(
                "Libras",
                style: TextStyle(fontSize: 1, color: accentColor),
              ),
              icon: Icon(
                Icons.settings_voice,
                color: primaryColor,
                size: 60,
              ))
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('ocorrencia').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(
                child: CircularProgressIndicator(),
              );

            return new SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ConstrainedBox(
                              constraints: BoxConstraints(maxHeight: 1000),
                              child: ListView.builder(
                                physics: ScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: snapshot.data.documents.length,
                                itemBuilder: (context, index) {
                                  return Problemas(DataProblemas.fromDocument(
                                      snapshot.data.documents[index]));
                                },
                              )),
                        ])));
          }),
    );
  }
}
