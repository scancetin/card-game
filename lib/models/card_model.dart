import 'package:flutter/cupertino.dart';
import 'package:tcard/tcard.dart';

final CardNotify cardNotify = CardNotify(CardModel());

class CardNotify extends ValueNotifier<CardModel> {
  CardNotify(CardModel value) : super(value);

  void indexIncrement() {
    if (value.index < value.images.length - 1) {
      value.index++;
    }
    notifyListeners();
  }

  void indexDecrement() {
    if (value.index > 0) {
      value.index--;
    }
    notifyListeners();
  }

  // TODO: find better place for these funcs
  int get getIndex => value.index;

  String get getText => value.texts[value.index];

  String get getName => value.names[value.index];

  String get getImage => value.images[value.index];

  List<String> get getAllImages => value.images;

  TCardController get getController => value.controller;
}

// TODO: turn "texts, images, names" to json
class CardModel {
  int index = 0;

  TCardController controller = TCardController();

  List<String> texts = [
    "0 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cra sed lctus ullamcorper.",
    "1 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed lectus.",
    "2 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed ullamcorper.",
    "3 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lectus ullamcorper.",
    "4 Lorem ipsum dolor sit amet, consectetur adipiscing elit. sed lectus ullamcorper.",
    "5 Lorem ipsum dolor sit amet, consectetur adipiscing. Cras sed lectus ullamcorper.",
    "6 Lorem ipsum dolor sit amet, consectetur adicing elit. Cras sed lectus ullamcorper.",
    "7 Lorem ipsum dolor sit amet, consectetur elit. Cras sed lectus ullamcorper.",
    "8 Lorem ipsum dolor sit amet, adipiscing elit. Cras sed lectus ullamcorper.",
    "9 Lorem ipsum dolor sit, consectetur adipiscing elit. Cras sed lectus ullamcorper.",
  ];

  List<String> names = [
    "0 Pippin",
    "1 Pippins",
    "2 Pippina",
    "3 Pippinw",
    "4 Pippind",
    "5 Pippinq",
    "6 Pippine",
    "7 Pippinr",
    "8 Paippin",
    "9 Paswippin",
  ];

  List<String> images = [
    'https://gank.io/images/5ba77f3415b44f6c843af5e149443f94',
    'https://gank.io/images/02eb8ca3297f4931ab64b7ebd7b5b89c',
    'https://gank.io/images/31f92f7845f34f05bc10779a468c3c13',
    'https://gank.io/images/b0f73f9527694f44b523ff059d8a8841',
    'https://gank.io/images/1af9d69bc60242d7aa2e53125a4586ad',
    'https://gank.io/images/5ba77f3415b44f6c843af5e149443f94',
    'https://gank.io/images/02eb8ca3297f4931ab64b7ebd7b5b89c',
    'https://gank.io/images/31f92f7845f34f05bc10779a468c3c13',
    'https://gank.io/images/b0f73f9527694f44b523ff059d8a8841',
    'https://gank.io/images/1af9d69bc60242d7aa2e53125a4586ad',
  ];
}
