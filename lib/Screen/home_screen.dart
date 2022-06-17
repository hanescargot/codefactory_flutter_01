import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = "https://www.naver.com";
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("ddd"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            if(controller == null){
              return;
            }
            controller!.loadUrl(homeUrl);
          }, icon: Icon(Icons.abc))
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller){
          this.controller =  controller; // 웹뷰 위젯을 컨트롤 할 수 있다.
        },
        initialUrl: 'https://www.naver.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}