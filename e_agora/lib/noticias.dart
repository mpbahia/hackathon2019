import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Noticias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final accentColor = Theme.of(context).accentColor;
    final primaryColor = Theme.of(context).primaryColor;
    final hintColor = Theme.of(context).hintColor;

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
          backgroundColor: accentColor,
          title: Text("Notícias"),
          centerTitle: true,
          actions: <Widget>[
           InkWell(
             child:  ButtonBar(
              children: <Widget>[Icon(Icons.search)],
            ),
            onTap: (){
              alert();
            },
           )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              InkWell(
                child: Card(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Itinga lidera homicídios em Salvador e RMS nos últimos oito anos e meio",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("www.correio24horas.com.br",
                                style: TextStyle(fontSize: 11))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 120.0,
                      child: Image.network(
                        "https://correio-cdn3.cworks.cloud/fileadmin/_processed_/6/5/csm_15072019_Itinga_EV_CP_4944a9c70d.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )),
                onTap: () {
                  launch(
                      'https://www.correio24horas.com.br/noticia/nid/itinga-lidera-homicidios-em-salvador-e-rms-nos-ultimos-oito-anos-e-meio/');
                },
              ),
              InkWell(
                child: Card(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Caminhada em Salvador pede fim de violência contra as mulheres.",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("g1.globo.com", style: TextStyle(fontSize: 11))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 120.0,
                      child: Image.network(
                        "https://s2.glbimg.com/W_9KhfXN2VShbmbAPytuZTHjARI=/0x0:1280x720/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/N/9/0Af92IQVebTLMUbbuHHg/c71c79a3-ef50-4b7f-b77b-1cd83df325e6.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )),
                onTap: () {
                  launch(
                      "https://g1.globo.com/ba/bahia/noticia/2019/08/08/caminhada-pede-fim-de-violencia-contra-as-mulheres-em-salvador-fotos.ghtml");
                },
              ),
              InkWell(
                child: Card(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Vídeo mostra homens armados, violência e correria durante assalto em mercado no bairro de Tancredo Neves, em Salvador",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("g1.globo.com/ba",
                                style: TextStyle(fontSize: 11))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 120.0,
                      child: Image.network(
                        "https://s2.glbimg.com/9lka-Lklno4hXO-omPIkJnKgC6U=/0x0:1280x720/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/R/g/WRipEETsiaA05dtbvPvw/whatsapp-image-2019-10-09-at-22.33.08.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )),
                onTap: () {
                  launch(
                      "https://g1.globo.com/ba/bahia/noticia/2019/10/10/video-mostra-homens-armados-violencia-e-correria-durante-assalto-em-mercado-no-bairro-de-tancredo-neves-em-salvador.ghtml");
                },
              ),
              InkWell(
                child: Card(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Estátua de Zumbi dos Palmares recebe nova lança após parte do objeto ter sido furtada no Centro Histórico de Salvador",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("https://g1.globo.com",
                                style: TextStyle(fontSize: 11))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 120.0,
                      child: Image.network(
                        "https://s2.glbimg.com/6CuAQNHs7EkdaCGVH3nbNDPSXNk=/0x0:4512x3008/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/s/l/AmkPmQQACApEoM9ckQbg/08-11-2019-devolucao-da-lanca-de-zumbi-foto-jefferson-peixoto-secom-pms-1-.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )),
                onTap: () {
                  launch(
                      "https://g1.globo.com/ba/bahia/noticia/2019/11/08/estatua-de-zumbi-dos-palmares-recebe-nova-lanca-apos-furto-no-centro-historico-de-salvador.ghtml");
                },
              ),
            ],
          ),
        )
        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: accentColor,
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.history,
        //           color: primaryColor,
        //         ),
        //         title: Text(
        //           "Historico",
        //           style: TextStyle(color: primaryColor),
        //         )),
        //   ],
        // ),
        );
  }
}
