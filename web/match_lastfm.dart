library match_lastfm;

import 'dart:html';
import 'dart:json';
import '../dart_libs/Lastfm.dart';

void main() {
  query("#searchBtn").on.click.add(search);
}

void search(Event event) {
  print("search...");
  getAlbum();
}

void getAlbum(){
  Lastfm lfm = new Lastfm('');
  print("getInfo...");
  lfm.track().getInfo("スキマスイッチ", "ゴールデンタイムラバー", 
  function(Map data){
    window.alert(data["track"]["url"]);
  });
  print("comp");
}