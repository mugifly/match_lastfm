library lastfm;

/**
 * Lastfm minimal client library for dart
 * (C) Masanori Ohgita (mugifly) - 2012
 * */

import 'dart:html';
import 'dart:json';

class Lastfm {
  static const String API_ENDPOINT_LASTFM = "http://ws.audioscrobbler.com/2.0/";

  String _apiKey;

  Lastfm(String this._apiKey);
  
  track() => new Lastfm_track(_apiKey);

}

/**
 * Lastfm track sub-class
 */

class Lastfm_track extends Lastfm {
  Lastfm_track(String apikey):super(apikey);
  
  /**
   * Track.getInfo - get infomation of track, by [artist] and [track]
   */
  getInfo(String artist, String track, callback){
    new HttpRequest.get(
      "${Lastfm.API_ENDPOINT_LASTFM}?method=track.getInfo&format=json&api_key=${super._apiKey}&artist=${artist}&track=${track}",
       Function(HttpRequest req){
        Map map = JSON.parse(req.responseText);
        callback(map);
        });
  }
  
}

