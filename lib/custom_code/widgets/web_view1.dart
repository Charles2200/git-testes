// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher/url_launcher.dart';

import 'dart:io'; // Import to use Platform.isAndroid and Platform.isIOS

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebView1 extends StatefulWidget {
  const WebView1({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _WebView1State createState() => _WebView1State();
}

class _WebView1State extends State<WebView1> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  PullToRefreshController? pullToRefreshController;

  @override
  void initState() {
    super.initState();

    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: const Color.fromARGB(255, 205, 205, 205),
      ),
      onRefresh: () async {
        if (Platform.isAndroid) {
          webViewController?.reload();
        } else if (Platform.isIOS) {
          webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      key: webViewKey,
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          useShouldOverrideUrlLoading: true,
        ),
      ),
      initialUrlRequest: URLRequest(
        url: Uri.parse(
            'https://www.vendaingressos.com.br/pdv/%242a%2408%2420230703220533Cf1f11eOJFAKn3Qw3EkCRHE5i7mPJ7DYK5VxW'),
      ),
      shouldOverrideUrlLoading: (controller, navigationAction) async {
        final deeplink = navigationAction.request.url;

        if (deeplink != null &&
            navigationAction.request.url.toString().isDeepLink()) {
          launchUrl(deeplink, mode: LaunchMode.externalApplication);
          return NavigationActionPolicy.CANCEL;
        }

        return NavigationActionPolicy.ALLOW;
      },
      pullToRefreshController: pullToRefreshController,
      onWebViewCreated: (InAppWebViewController controller) {
        webViewController = controller;
      },
      onLoadStop: (controller, url) async {
        pullToRefreshController?.endRefreshing();
      },
      onProgressChanged: (controller, progress) {
        if (progress == 100) {
          pullToRefreshController?.endRefreshing();
        }
      },
    );
  }
}

extension DeepLinksSolve on String {
  bool isDeepLink() {
    if (this.contains('whatsapp')) {
      return true;
    }
    if (this.contains('facebook')) {
      return true;
    }
    if (this.contains('twitter')) {
      return true;
    }
    return false;
  }
}
