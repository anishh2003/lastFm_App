import 'package:flutter/material.dart';
import 'package:music_search/constants.dart';
import 'package:music_search/screen_tabs/album/detail/logic/album_detail_logic.dart';
import 'package:music_search/screen_tabs/album/detail/model/album_detail_model.dart';

class AlbumDetailsUI extends StatelessWidget {
  final String albumName;
  final String albumArtist;

  const AlbumDetailsUI({required this.albumName, required this.albumArtist});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AlbumDetailModel>(
      future: getAlbumDetailsData(albumName, albumArtist),
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
                      Text(snapshot.data!.artist),
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Container(
                  color: Colors.blueGrey.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (snapshot.data!.wiki != null)
                          const Text('Summary', style: kHeadingTitle),
                        if (snapshot.data!.wiki != null)
                          const SizedBox(height: 20.0),
                        if (snapshot.data!.wiki != null)
                          Text(snapshot.data!.wiki!.summary),
                        const SizedBox(height: 20.0),
                        const Text(
                          'Album Tracks',
                          style: kHeadingTitle,
                        ),
                        SizedBox(height: 20.0),
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: snapshot.data!.tracks.track.length,
                            itemBuilder: (context, index) {
                              return Card(
                                color: Colors.white24,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text('${index + 1}.'),
                                      SizedBox(width: 5),
                                      Text(snapshot
                                          .data!.tracks.track[index].name),
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
