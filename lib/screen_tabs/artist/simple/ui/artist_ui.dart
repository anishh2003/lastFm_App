import 'package:flutter/material.dart';
import 'package:music_search/screen_tabs/artist/detail/ui/artist_detail_ui.dart';
import 'package:music_search/screen_tabs/artist/simple/logic/artist_logic.dart';
import 'package:music_search/screen_tabs/artist/simple/model/artist_data.dart';
import 'package:music_search/search/search_architecture.dart';
import 'package:provider/provider.dart';

class ArtistUI extends StatefulWidget {
  const ArtistUI({Key? key}) : super(key: key);

  @override
  _ArtistUIState createState() => _ArtistUIState();
}

class _ArtistUIState extends State<ArtistUI> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArtistData>>(
      future: getArtistData(Provider.of<Data>(context).searchTermEntered),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var artistData = snapshot.data![index];
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ArtistDetailsUI(artist: artistData.name)),
                      ),
                      child: Card(
                        color: Colors.lightGreen.shade300,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                artistData.name,
                                style: const TextStyle(fontSize: 20.0),
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
