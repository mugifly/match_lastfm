library match_lastfm;

import 'dart:html';
import 'dart:json';
import 'Lastfm.dart';

void main() {
  query("#searchBtn").on.click.add(search);
}

void search(Event event) {
  print("search...");
  getAlbum();
}

void getAlbum(){
  Lastfm lfm = new Lastfm('6d4553c20fc0681bca3498bcc1b073dc');
  print("getInfo...");
  lfm.track().getInfo("スキマスイッチ", "ゴールデンタイムラバー", 
  function(Map data){
    window.alert(data["track"]["url"]);
  });
  print("comp");
}