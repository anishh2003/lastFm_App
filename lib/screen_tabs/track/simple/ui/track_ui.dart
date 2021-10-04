import 'package:flutter/material.dart';
import 'package:music_search/screen_tabs/track/detail/ui/track_details_ui.dart';
import 'package:music_search/screen_tabs/track/simple/logic/track_logic.dart';
import 'package:music_search/screen_tabs/track/simple/model/track_data.dart';
import 'package:music_search/search/search_architecture.dart';
import 'package:provider/provider.dart';

class TrackUI extends StatefulWidget {
  const TrackUI({Key? key}) : super(key: key);

  @override
  _TrackUIState createState() => _TrackUIState();
}

class _TrackUIState extends State<TrackUI> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TrackData>>(
      future: getTrackData(Provider.of<Data>(context).searchTermEntered),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var trackData = snapshot.data![index];
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrackDetailsUI(
                                  trackName: trackData.name,
                                  artist: trackData.artist,
                                )),
                      ),
                      child: Card(
                        color: Colors.lightGreen.shade300,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                trackData.name,
                                style: const TextStyle(fontSize: 20.0),
                              ),
                              Text(
                                'by ${trackData.artist}',
                              ),
                              //Text('by ${artistData.image}'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
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
