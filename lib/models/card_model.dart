import 'package:flutter/cupertino.dart';
import 'package:tcard/tcard.dart';

final CardNotify cardNotify = CardNotify(CardModel());

class CardNotify extends ValueNotifier<CardModel> {
  CardNotify(CardModel value) : super(value);

  void indexIncrement(int index) {
    value.index = index;
    notifyListeners();
  }

  void indexDecrement(int index, SwipInfo info) {
    value.index = index;
    notifyListeners();
  }

  void rigthSwipe() {
    value.firstIconValue += value.rigthSwipes[getIndex - 1][0];
    value.secondIconValue += value.rigthSwipes[getIndex - 1][1];
    value.thirdIconValue += value.rigthSwipes[getIndex - 1][2];
    value.fourthIconValue += value.rigthSwipes[getIndex - 1][3];
    notifyListeners();
  }

  void leftSwipe() {
    value.firstIconValue += value.leftSwipes[getIndex - 1][0];
    value.secondIconValue += value.leftSwipes[getIndex - 1][1];
    value.thirdIconValue += value.leftSwipes[getIndex - 1][2];
    value.fourthIconValue += value.leftSwipes[getIndex - 1][3];
    notifyListeners();
  }

  // TODO: back button doesnt working good
  // void backButtonValues(SwipInfo info) {
  //   print("back");
  //   print(value.index);
  //   print(getIndex);

  //   if (info.direction == SwipDirection.Right) {
  //     value.firstIconValue -= value.rigthSwipes[getIndex][0];
  //     value.secondIconValue -= value.rigthSwipes[getIndex][1];
  //     value.thirdIconValue -= value.rigthSwipes[getIndex][2];
  //     value.fourthIconValue -= value.rigthSwipes[getIndex][3];
  //     print("RIGTH");
  //   } else if (info.direction == SwipDirection.Left) {
  //     value.firstIconValue -= value.leftSwipes[getIndex][0];
  //     value.secondIconValue -= value.leftSwipes[getIndex][1];
  //     value.thirdIconValue -= value.leftSwipes[getIndex][2];
  //     value.fourthIconValue -= value.leftSwipes[getIndex][3];
  //     print("LEFT");
  //   }
  //   notifyListeners();
  // }

  // TODO: find better place for these funcs

  int get getIndex => value.index;

  String get getText => value.texts[getIndex];

  String get getName => value.names[getIndex];

  String get getImage => value.images[getIndex];

  List<String> get getAllImages => value.images;

  TCardController get getController => value.controller;

  List<int> get currentStats => [value.firstIconValue, value.secondIconValue, value.thirdIconValue, value.fourthIconValue];

  String get getRightText => value.rigthTexts[getIndex];

  String get getLeftText => value.leftTexts[getIndex];

  List<int> getCardStatsRL(index) => [value.rigthSwipes[getIndex][index], value.leftSwipes[getIndex][index]];
}

// TODO: turn "texts, images, names" to json
class CardModel {
  int firstIconValue = 50;
  int secondIconValue = 50;
  int thirdIconValue = 50;
  int fourthIconValue = 50;

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

  List<List<int>> rigthSwipes = [
    [0, 0, -2, 0],
    [0, 0, 0, 5],
    [3, 0, 7, 5],
    [0, -20, 7, 5],
    [3, 8, 0, 5],
    [3, 0, 0, 0],
    [0, 10, 7, -5],
    [3, 0, -7, 15],
    [0, 10, 7, 5],
    [0, -12, 0, 0],
  ];

  List<List<int>> leftSwipes = [
    [1, 0, 0, 0],
    [0, 10, -7, 5],
    [3, 0, 7, 15],
    [0, 10, -7, 5],
    [0, 12, 0, 0],
    [3, 0, 7, 5],
    [0, 0, 0, 5],
    [-3, 0, 7, 5],
    [0, 20, 7, 5],
    [3, -8, 0, 5],
  ];

  List<String> rigthTexts = [
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

  List<String> leftTexts = [
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
}
