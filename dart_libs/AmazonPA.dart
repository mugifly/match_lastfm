library AmazonPA;

/**
 * Amazon Product Advertising minimal client library for dart
 * (C) Masanori Ohgita (mugifly) - 2012
 * */

import 'dart:html';
import 'dart:json';

class AmazonPA {
  static const String API_ENDPOINT_LASTFM = "http://ws.audioscrobbler.com/2.0/";

  String _apiKey;

  Lastfm(String this._apiKey);
  
  track() => new Lastfm_track(_apiKey);

}
