import 'dart:async';
import 'package:e_agora/boletin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:e_agora/data/data_alert.dart';
import 'package:e_agora/mapa.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OcorreViolencia extends StatelessWidget {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  final Set<String> _favorites = Set<String>();

  @override
  Widget build(BuildContext context) {
    final accentColor = Theme.of(context).accentColor;
    final primaryColor = Theme.of(context).primaryColor;
    final hintColor = Theme.of(context).hintColor;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: accentColor,
          title: Text(
            "Violência",
            style: TextStyle(
                color: primaryColor, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // decoration: BoxDecoration(
                //         gradient: LinearGradient(
                //             colors: [Colors.blue, Colors.blue[700]]),
                //         borderRadius: BorderRadius.circular(50.0),
                //         boxShadow: [
                //           BoxShadow(
                //               color: Color(0xFF6078ea).withOpacity(.3),
                //               offset: Offset(0.0, 9.0),
                //               blurRadius: 10.0)
                //         ]),
                Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.orange[900],
                  ),
                  child: FlatButton(
                    color: Colors.orange[900],
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.call,
                          color: primaryColor,
                        ),
                        Text("\t\tLigar para a Delegacia?",
                            style:
                                TextStyle(color: primaryColor, fontSize: 19)),
                      ],
                    ),
                    onPressed: () {
                      UrlLauncher.launch('tel:+${190}');
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.grey[700],
                  ),
                  child: FlatButton(
                    color: Colors.grey[700],
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.web,
                        color: primaryColor,
                      ),
                      Text(
                        "\t\tDenúncia Anonima?",
                        style: TextStyle(color: primaryColor, fontSize: 19),
                      ),
                    ]),
                    onPressed: () {
                      UrlLauncher.launch('https://disquedenuncia.com/denuncie-aqui/');
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.red[700],
                  ),
                  child: FlatButton(
                    color: Colors.red[700],
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.open_in_browser,
                        color: primaryColor,
                      ),
                      Text(
                        "\t\tRegistrar Ocorrência?",
                        style: TextStyle(color: primaryColor, fontSize: 19),
                      ),
                    ]),
                    onPressed: () {
                      UrlLauncher.launch(
                          'https://www.delegaciadigital.ssp.ba.gov.br/OcorrenciaInternet/Bemvindo.ssp');
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.yellow[800],
                  ),
                  child: FlatButton(
                    color: Colors.yellow[800],
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.email,
                        color: primaryColor,
                      ),
                      Text(
                        "\t\Assistência Social?",
                        style: TextStyle(color: primaryColor, fontSize: 19),
                      ),
                    ]),
                    onPressed: () {
                      UrlLauncher.launch(
                          'mailto:conselhotutelar8@hotmail.com');
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.blue[800],
                  ),
                  child: FlatButton(
                    color: Colors.blue[800],
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.email,
                        color: primaryColor,
                      ),
                      Text(
                        "\t\tAcolhimento Piscicólogico?",
                        style: TextStyle(color: primaryColor, fontSize: 17),
                      ),
                    ]),
                    onPressed: () {
                      UrlLauncher.launch(
                          'mailto:conselhotutelar8@hotmail.com');
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: ScreenUtil.getInstance().setHeight(500),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 15.0),
                            blurRadius: 15.0),
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, -10.0),
                            blurRadius: 10.0),
                      ]),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text(
                            "Localização",
                            style: TextStyle(
                              color: accentColor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 15, bottom: 30),
                          child: Text(
                            "Deseja saber qual o órgão responsável mais próximo?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: accentColor),
                          ),
                        ),
                        Container(
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.green[600],
                          ),
                          child: FlatButton(
                            color: Colors.green[600],
                            child: Text(
                              "Clique aqui e use o Maps!",
                              style:
                                  TextStyle(color: primaryColor, fontSize: 17),
                            ),
                            onPressed: () {
                              UrlLauncher.launch(
                                  'https://www.google.com.br/maps/search/delegacia/@-12.9760432,-38.5133559,14z/data=!3m1!4b1');
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));

    // FutureBuilder(
    //   builder: (context, snapshot) {

    //   },
    // );
  }

  _bookmarkButton() {
    return FutureBuilder<WebViewController>(
      future: _controller.future,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> controller) {
        if (controller.hasData) {
          return FloatingActionButton(
            onPressed: () async {
              var url = await controller.data.currentUrl();
              _favorites.add(url);
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('Saved $url for later reading.')),
              );
            },
            child: Icon(Icons.favorite),
          );
        }
        return Container();
      },
    );
  }
}
