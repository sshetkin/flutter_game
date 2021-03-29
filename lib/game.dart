import 'dart:math';

class Game {
  List<String> list = [
    'A gloomy dungeon, a bare brick wall',
    'Apparently this is the former armory room',
    'Looks like something was stored here, wooden shelves, bags',
    'All in a spider web, would rather get to another room',
    'Drip-Drip-Drip - there is a sound of falling drops. ',
    'Bare stone walls, nothing seems to be here',
    'The remains of furniture suggested that there was once a comoro',
    'Four walls, dry air, nothing special',
    'An ordinary room is four meters by four',
    'This room is larger than usual',
    'Apart from the skeleton on the floor, nothing interesting',
    'Long corridor at the end of which doors are visible',
    'Looks like a guard room',
    'An ordinary room, bare walls and stone underfoot',
  ];

  List<int> listroom = [];

  String level() {
    Random rnd = Random();
    int r = rnd.nextInt(list.length);

    if (listroom.contains(r)) {
      return ('в комнату $r вы уже заходили');
    } else {
      listroom.add(r);
      return (list[r]);
    }
  }
}
