import 'package:polymer/polymer.dart';
import 'dart:math';

/**
 * A Polymer click counter element.
 */
@CustomTag('random-label')
class RandomLabel extends PolymerElement {
  @published String label = "";

  RandomLabel.created() : super.created() {
  }

  void clicked() {
    var rng = new Random();
    label = "number" + rng.nextInt(2048).toString();
  }
}

