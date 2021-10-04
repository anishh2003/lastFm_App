import 'package:flutter/material.dart';
import 'package:music_search/screen_tabs/album/simple/ui/album_ui.dart';
import 'package:music_search/screen_tabs/artist/simple/ui/artist_ui.dart';
import 'package:music_search/screen_tabs/track/simple/ui/track_ui.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:music_search/search/search_architecture.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: 'ALBUM'),
              Tab(text: 'ARTIST'),
              Tab(text: 'SONG'),
            ],
          ),
          title: const SearchBar(),
        ),
        body: const TabBarView(
          children: [
            AlbumUI(),
            ArtistUI(),
            TrackUI(),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late FloatingSearchBarController controller;

  @override
  void initState() {
    controller = FloatingSearchBarController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 350.0,
      child: FloatingSearchBar(
        controller: controller,
        hint: 'Enter an artist , track or album',
        physics: const BouncingScrollPhysics(),
        title: Text(Provider.of<Data>(context).searchTermEntered
            // searchTermEntered ?? 'Enter an artist , track or album',
            ),
        actions: [
          FloatingSearchBarAction.searchToClear(),
        ],
        builder: (context, transition) {
          return const ClipRect(
            child: Material(
              elevation: 4,
              color: Colors.white,
              child: Placeholder(
                fallbackHeight: 200,
              ),
            ),
          );
        },
        onQueryChanged: (query) {
          setState(() {
            if (query.isEmpty) {
              Provider.of<Data>(context, listen: false).changeString('believe');
            } else {
              Provider.of<Data>(context, listen: false).changeString(query);
            }
          });
        },
        onSubmitted: (query) {
          setState(() {
            if (query.isEmpty) {
              Provider.of<Data>(context, listen: false).changeString('believe');
            } else {
              Provider.of<Data>(context, listen: false).changeString(query);
            }
          });
        },
      ),
    );
  }
}
