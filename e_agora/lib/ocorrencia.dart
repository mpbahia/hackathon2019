import 'dart:async';
import 'package:e_agora/data/data_problemas.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Ocorrencia extends StatelessWidget {
  final DataProblemas data;
  Ocorrencia(this.data);
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
            data.titulo,
            style: TextStyle(
                color: primaryColor, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                      UrlLauncher.launch('tel:+${data.telefone.toString()}');
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
                      UrlLauncher.launch('${data.denuncia}');
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
                      UrlLauncher.launch('${data.ocorrencia}');
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                data.assistencia != null
                    ? Container(
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
                              style:
                                  TextStyle(color: primaryColor, fontSize: 19),
                            ),
                          ]),
                          onPressed: () {
                            UrlLauncher.launch('mailto:${data.assistencia}');
                          },
                        ),
                      )
                    : SizedBox(
                        height: 1,
                      ),
                SizedBox(
                  height: 15,
                ),
                data.acolhimento != null
                    ? Container(
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
                              style:
                                  TextStyle(color: primaryColor, fontSize: 17),
                            ),
                          ]),
                          onPressed: () {
                            UrlLauncher.launch('mailto:${data.acolhimento}');
                          },
                        ),
                      )
                    : SizedBox(
                        height: 1,
                      ),
                SizedBox(
                  height: 15,
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
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ));
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

class Menu extends StatelessWidget {
  Menu(this._webViewControllerFuture, this.favoritesAccessor);
  final Future<WebViewController> _webViewControllerFuture;
  // TODO(efortuna): Come up with a more elegant solution for an accessor to this than a callback.
  final Function favoritesAccessor;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> controller) {
        if (!controller.hasData) return Container();
        return PopupMenuButton<String>(
          onSelected: (String value) async {
            if (value == 'Email link') {
              var url = await controller.data.currentUrl();
              await launch(
                  'mailto:?subject=Check out this cool Wikipedia page&body=$url');
            } else {
              var newUrl = await Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FavoritesPage(favoritesAccessor());
              }));
              Scaffold.of(context).removeCurrentSnackBar();
              if (newUrl != null) controller.data.loadUrl(newUrl);
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
            const PopupMenuItem<String>(
              value: 'Email link',
              child: Text('Email link'),
            ),
            const PopupMenuItem<String>(
              value: 'See Favorites',
              child: Text('See Favorites'),
            ),
          ],
        );
      },
    );
  }
}

class FavoritesPage extends StatelessWidget {
  FavoritesPage(this.favorites);
  final Set<String> favorites;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorite pages')),
      body: ListView(
          children: favorites
              .map((url) => ListTile(
                  title: Text(url), onTap: () => Navigator.pop(context, url)))
              .toList()),
    );
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture)
      : assert(_webViewControllerFuture != null);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;
        return Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () => navigate(context, controller, goBack: true),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: !webViewReady
                  ? null
                  : () => navigate(context, controller, goBack: false),
            ),
          ],
        );
      },
    );
  }

  navigate(BuildContext context, WebViewController controller,
      {bool goBack: false}) async {
    bool canNavigate =
        goBack ? await controller.canGoBack() : await controller.canGoForward();
    if (canNavigate) {
      goBack ? controller.goBack() : controller.goForward();
    } else {
      Scaffold.of(context).showSnackBar(
        SnackBar(
            content: Text("No ${goBack ? 'back' : 'forward'} history item")),
      );
    }
  }
}
