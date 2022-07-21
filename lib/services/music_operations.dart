import 'package:spotify/models/music.dart';

class MusicOperations {
  MusicOperations._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Smells like teen Spirit',
          'https://c-fa.cdn.smule.com/rs-s-sf-1/sing_google/performance/cover/53/52/31f84369-bced-461a-a67c-132a1f6c5d83.jpg',
          'desc'),
      Music(
          'Highway to hell',
          'https://c-fa.cdn.smule.com/rs-s48/arr/a7/f0/d89a62b8-a9ff-46e4-ac34-9a3e07479dde.jpg',
          'desc'),
      Music(
          'I want to break free',
          'https://c-fa.cdn.smule.com/smule-gg-s-sf-bck4/arr/2a/65/456c1fcc-9d55-43d5-890f-e1703d80b109.jpg',
          'desc'),
      Music(
          'Numb',
          'https://c-fa.cdn.smule.com/rs-s81/arr/d3/ac/5379f798-ade7-4d88-be67-7bf7fa76cd79.jpg',
          'desc'),
      Music(
          '21 Guns',
          'https://c-fa.cdn.smule.com/rs-s77/sing_google/performance/cover/19/4a/fc6c1f03-afdd-43e2-a8e9-1d2a5c414ad2.jpg',
          'desc'),
      Music(
          'Paranoid',
          'https://m.media-amazon.com/images/I/71bJpdCRlLL._CR0,204,1224,1224_UX256.jpg',
          'desc')
    ];
  }
}
