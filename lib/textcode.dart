// import 'package:flutter/cupertino.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class TextWidget extends StatefulWidget {
//   TextWidget({Key? key}) : super(key: key);
//
//   @override
//   State<TextWidget> createState() => _TextWidgetState();
// }
//
// class _TextWidgetState extends State<TextWidget> {
//   String _searchQuery = ''; // Add a variable to store the search query
//
//   void _performSearch() async {
//     if (_searchQuery.isNotEmpty) {
//       String url = 'https://www.google.com/search?q=$_searchQuery';
//
//       if (await canLaunch(url)) {
//         await launch(url);
//       } else {
//         // Fallback to opening the URL in the app
//         Navigator.of(context).push(
//           CupertinoPageRoute(
//             builder: (context) => WebViewPage(url: url),
//           ),
//         );
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: Text("Google Search"),
//         backgroundColor: CupertinoColors.darkBackgroundGray,
//         trailing: GestureDetector(
//           onTap: () => _performSearch(),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(
//                 CupertinoIcons.search,
//                 size: 20.0,
//                 color: CupertinoColors.white,
//               ),
//               SizedBox(width: 4.0),
//               Text(
//                 "Search",
//                 style: TextStyle(color: CupertinoColors.white),
//               ),
//             ],
//           ),
//         ),
//       ),
//       backgroundColor: CupertinoColors.darkBackgroundGray,
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CupertinoTextField(
//                 placeholder: 'Paste link or URL here',
//                 onChanged: (value) {
//                   setState(() {
//                     _searchQuery = value;
//                   });
//                 },
//                 onSubmitted: (_) => _performSearch(),
//                 keyboardType: TextInputType.url,
//               ),
//               SizedBox(height: 20),
//               CupertinoButton.filled(
//                 child: Text('Search'),
//                 onPressed: _performSearch,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class WebViewPage extends StatelessWidget {
//   final String url;
//
//   const WebViewPage({Key? key, required this.url}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: Text("Google Search"),
//       ),
//       child:SafeArea(
//         child: WebView(
//           initialUrl: url,
//           javascriptMode: JavascriptMode.unrestricted,
//         ),
//       )
//
//     );
//   }
// }
