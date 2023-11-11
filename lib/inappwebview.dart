import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyWebsiteView extends StatefulWidget {
  const MyWebsiteView({Key? key}) : super(key: key);

  @override
  _MyWebsiteViewState createState() => _MyWebsiteViewState();
}

class _MyWebsiteViewState extends State<MyWebsiteView> {
  InAppWebViewController? webViewController; // Add this

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Website View'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse('http://homehealthcare.pk/Home/Blog/')), // Replace with your website URL
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
      ),
    );
  }
}
