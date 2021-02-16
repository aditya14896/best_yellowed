import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Bungee',
        primaryTextTheme: TextTheme(),
      )));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: AfterSplash(),
      backgroundColor: Colors.blueGrey[800],
      photoSize: 100.0,
      loaderColor: Colors.yellow[300],
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          toolbarHeight: 25.0,
          title: Text('Best Yellowed'),
          centerTitle: true,
          elevation: 0,
        ),
        // Enter your custom url
        url: "https://www.bestyellowed.com/",
        withJavascript: true,
        withLocalStorage: true,
        enableAppScheme: true,
        primary: true,
        supportMultipleWindows: true,
        allowFileURLs: true,
        withLocalUrl: true,
        withOverviewMode: true,
        useWideViewPort: true,
        scrollBar: true,
        appCacheEnabled: true);
  }
}
