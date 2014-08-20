import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:core_elements/core_input.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('echo-widget')
class EchoWidget extends PolymerElement {
  @observable String typedValue;
  
  EchoWidget.created() : super.created() {
  }

  void textChanged(Event e, var detail, Node target) {
    CoreInput input = target;
    typedValue = input.value;
  }
}

