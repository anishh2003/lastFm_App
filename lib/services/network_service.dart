import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';

var apiKey = '755bf5e882b716dac814852b5e8e2e52';

class NetworkHelper {
  final String requiredStats;

  NetworkHelper(this.requiredStats);

  static Future fetchSelectedTabData(
      String tabSelectedData, String searchTermEntered) async {
    http.Response response = await retry(
      // Make a GET request
      () => http
          .get(
            Uri.parse(
                'https://ws.audioscrobbler.com/2.0/?method=$tabSelectedData.search&$tabSelectedData=$searchTermEntered&api_key=$apiKey&format=json'),
          )
          .timeout(const Duration(seconds: 5)),
      // Retry on SocketException or TimeoutException
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw (response.statusCode);
    }
  }

  static Future fetchTrackDetailData(String trackName, String artist) async {
    http.Response response = await retry(
      // Make a GET request
      () => http
          .get(Uri.parse(
              'https://ws.audioscrobbler.com/2.0/?method=track.getInfo&api_key=$apiKey&artist=$artist&track=$trackName&format=json'))
          .timeout(const Duration(seconds: 5)),
      // Retry on SocketException or TimeoutException
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw (response.statusCode);
    }
  }

  static Future fetchAlbumDetailData(String albumName, String artist) async {
    http.Response response = await retry(
      // Make a GET request
      () => http
          .get(
            Uri.parse(
                'https://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=$apiKey&artist=$artist&album=$albumName&format=json'),
          )
          .timeout(const Duration(seconds: 5)),
      // Retry on SocketException or TimeoutException
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );

    if (response.statusCode == 200) {
      print("Response is : ${response.body}");
      return response.body;
    } else {
      throw (response.statusCode);
    }
  }

  static Future fetchArtistDetailData(String artist) async {
    http.Response response = await retry(
      // Make a GET request
      () => http
          .get(
            Uri.parse(
                'https://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=$artist&api_key=$apiKey&format=json'),
          )
          .timeout(const Duration(seconds: 5)),
      // Retry on SocketException or TimeoutException
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw (response.statusCode);
    }
  }
}
