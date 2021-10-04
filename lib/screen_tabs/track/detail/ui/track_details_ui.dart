import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:music_search/constants.dart';
import 'package:music_search/screen_tabs/track/detail/logic/track_details_logic.dart';
import 'package:music_search/screen_tabs/track/detail/model/track_detail_model.dart';
import 'package:url_launcher/url_launcher.dart';

class TrackDetailsUI extends StatelessWidget {
  final String artist;
  final String trackName;

  const TrackDetailsUI({required this.trackName, required this.artist});

  @override
  Widget build(BuildContext context) {
    print("track name : $trackName");
    print("artist name : $artist");
    return FutureBuilder<TrackModel>(
      future: getTrackDetailsData(trackName, artist),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Scaffold(
              appBar: AppBar(
                title: Center(
                  child: Column(
                    children: [
                      Text(snapshot.data!.name),
                      Text(snapshot.data!.artist.name),
                    ],
                  ),
                ),
              ),
              body: Container(
                color: Colors.yellow.shade50,
                child: Column(
                  children: [
                    if (snapshot.data!.album?.image[2].name != null)
                      Expanded(
                          child: Image.network(
                              snapshot.data!.album!.image[2].name)),
                    if (snapshot.data!.wiki != null)
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Summary :", style: kHeadingTitle)),
                      ),
                    if (snapshot.data!.wiki != null)
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(snapshot.data!.wiki!.summary),
                      ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("More Info :", style: kHeadingTitle)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: snapshot.data!.url,
                              style: const TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("TAPPED !!");
                                  launch(snapshot.data!.url);
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text('UrlLauchner'),
//         ),
//         body: new Center(
//           child: new RichText(
//             text: new TextSpan(
//               children: [
//                 new TextSpan(
//                   text: 'This is no Link, ',
//                   style: new TextStyle(color: Colors.black),
//                 ),
//                 new TextSpan(
//                   text: 'but this is',
//                   style: new TextStyle(color: Colors.blue),
//                   recognizer: new TapGestureRecognizer()
//                     ..onTap = () { launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
//                     },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
