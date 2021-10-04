import 'package:flutter/material.dart';
import 'package:music_search/constants.dart';
import 'package:music_search/screen_tabs/artist/detail/logic/artist_detail_logic.dart';
import 'package:music_search/screen_tabs/artist/detail/model/artist_detail_model.dart';

class ArtistDetailsUI extends StatelessWidget {
  final String artist;

  ArtistDetailsUI({required this.artist});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ArtistDetailModel>(
      future: getArtistDetailsData(artist),
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
                      // Text(snapshot.data!.album.artist),
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Container(
                  color: Colors.blueGrey.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Summary',
                          style: kHeadingTitle,
                        ),
                        const SizedBox(height: 10.0),
                        Text(snapshot.data!.bio.summary),
                        const SizedBox(height: 20.0),
                        const Text(
                          'Similar Artists :',
                          style: kHeadingTitle,
                        ),
                        const SizedBox(height: 10.0),
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: snapshot.data!.similar.artist.length,
                            itemBuilder: (context, index) {
                              return Card(
                                color: Colors.white24,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text('$index.'),
                                      const SizedBox(width: 5),
                                      Text(snapshot
                                          .data!.similar.artist[index].name),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
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
