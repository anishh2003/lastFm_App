import 'package:flutter/material.dart';
import 'package:music_search/constants.dart';
import 'package:music_search/screen_tabs/album/detail/ui/album_details_ui.dart';
import 'package:music_search/screen_tabs/album/simple/logic/album_logic.dart';
import 'package:music_search/screen_tabs/album/simple/model/album_data.dart';
import 'package:music_search/search/search_architecture.dart';
import 'package:provider/provider.dart';

class AlbumUI extends StatefulWidget {
  const AlbumUI({Key? key}) : super(key: key);

  @override
  _AlbumUIState createState() => _AlbumUIState();
}

class _AlbumUIState extends State<AlbumUI> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AlbumData>>(
      future: getAlbumData(Provider.of<Data>(context).searchTermEntered),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var albumData = snapshot.data![index];
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlbumDetailsUI(
                                albumName: albumData.name,
                                albumArtist: albumData.artist)),
                      ),
                      child: Card(
                        color: Colors.lightGreen.shade300,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                albumData.name,
                                style: kAlbumName,
                              ),
                              Text('by ${albumData.artist}'),
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
