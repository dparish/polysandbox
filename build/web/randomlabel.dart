import 'package:polymer/polymer.dart';
import 'dart:math';

/**
 * A Polymer click counter element.
 */
@CustomTag('random-label')
class RandomLabel extends PolymerElement with ChangeNotifier  {
  @reflectable @published String get label => __$label; String __$label = ""; @reflectable set label(String value) { __$label = notifyPropertyChange(#label, __$label, value); }

  RandomLabel.created() : super.created() {
  }

  void clicked() {
    var rng = new Random();
    label = "number" + rng.nextInt(2048).toString();
  }
}

