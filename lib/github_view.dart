import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubWebViewScreen extends StatefulWidget {
  const GitHubWebViewScreen({super.key});

  @override
  State<GitHubWebViewScreen> createState() => _GitHubWebViewScreenState();
}

class _GitHubWebViewScreenState extends State<GitHubWebViewScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://github.com/ichiragkumar'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Github")),
        backgroundColor: Colors.red,
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
