import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Wrapper',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WebViewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});
  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(NavigationDelegate(
        onPageFinished: (_) {
          setState(() => _isLoading = false);
        },
      ))
      ..loadFlutterAsset('assets/www/index.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        WebViewWidget(controller: _controller),
        if (_isLoading)
          const Center(child: CircularProgressIndicator()),
      ]),
    );
  }
}
