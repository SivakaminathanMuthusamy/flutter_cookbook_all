// Will not work when Path and Path Provider are imported as dependencies

// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';
//
// class DisplayCachedNetworkImage extends StatefulWidget {
//   @override
//   _DisplayCachedNetworkImageState createState() =>
//       _DisplayCachedNetworkImageState();
// }
//
// class _DisplayCachedNetworkImageState extends State<DisplayCachedNetworkImage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         child: Center(
//           child: CachedNetworkImage(
//             placeholder: (context, url) => CircularProgressIndicator(),
//             imageUrl:
//                 'https://cdn.dribbble.com/users/255/screenshots/2893682/rogie-6.gif',
//           ),
//         ),
//       ),
//     );
//   }
// }
