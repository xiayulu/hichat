import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:hichat/src/views/chat/models/chat.dart';

class ChatRepo {
  List<ChatModel> getList() {
    return [
      ChatModel(
        "asserts/images/avatar0.jpg",
        "Jack Chou",
        nouns.take(Random().nextInt(48)).join(" "),
        "${Random().nextInt(12)}:${Random().nextInt(59)}AM",
        199,
        false,
      ),
      ChatModel(
        "asserts/images/avatar1.jpg",
        "Taylor Swifter",
        nouns.take(Random().nextInt(48)).join(" "),
        "${Random().nextInt(12)}:${Random().nextInt(59)}AM",
        10,
        false,
      ),
      ChatModel(
        "asserts/images/avatar2.jpg",
        "Kebi Brown",
        nouns.take(Random().nextInt(48)).join(" "),
        "${Random().nextInt(12)}:${Random().nextInt(59)}AM",
        3,
        false,
      ),
      ChatModel(
        "asserts/images/avatar3.jpg",
        "Jastin Bloger",
        nouns.take(Random().nextInt(48)).join(" "),
        "${Random().nextInt(12)}:${Random().nextInt(59)}AM",
        Random().nextInt(199),
        Random().nextBool(),
      ),
      ChatModel(
        "asserts/images/avatar4.jpg",
        "Dowload Tramper",
        nouns.take(Random().nextInt(48)).join(" "),
        "${Random().nextInt(12)}:${Random().nextInt(59)}AM",
        Random().nextInt(199),
        Random().nextBool(),
      ),
      ChatModel(
        "asserts/images/avatar0.jpg",
        "Jack Chou",
        nouns.take(Random().nextInt(48)).join(" "),
        "${Random().nextInt(12)}:${Random().nextInt(59)}AM",
        Random().nextInt(199),
        Random().nextBool(),
      ),
      ChatModel(
        "asserts/images/avatar1.jpg",
        "Taylor Swifter",
        nouns.take(Random().nextInt(48)).join(" "),
        "${Random().nextInt(12)}:${Random().nextInt(59)}AM",
        Random().nextInt(199),
        Random().nextBool(),
      ),
      ChatModel(
        "asserts/images/avatar2.jpg",
        "Kebi Brown",
        nouns.take(Random().nextInt(48)).join(" "),
        "${Random().nextInt(12)}:${Random().nextInt(59)}AM",
        Random().nextInt(199),
        Random().nextBool(),
      ),
      ChatModel(
        "asserts/images/avatar3.jpg",
        "Jastin Bloger",
        nouns.take(Random().nextInt(48)).join(" "),
        "${Random().nextInt(12)}:${Random().nextInt(59)}AM",
        Random().nextInt(199),
        Random().nextBool(),
      ),
      ChatModel(
        "asserts/images/avatar4.jpg",
        "Dowload Tramper",
        nouns.take(Random().nextInt(48)).join(" "),
        "${Random().nextInt(12)}:${Random().nextInt(59)}AM",
        Random().nextInt(199),
        Random().nextBool(),
      ),
    ];
  }
}
