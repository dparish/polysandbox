import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:paper_elements/paper_input.dart';
import 'package:core_elements/core_collapse.dart';
// import 'models.dart';
import 'models/model.dart';

void main() {
    initPolymer().run(() {  
      // addElement();
      registerEvents();
    });
}

void registerEvents() {
  PaperInput polymer = querySelector("#idinput");
  polymer.addEventListener("change", (event) => window.alert(polymer.value));
}
//void addElement() {
//  var newElement = new Element.tag("click-counter");
//  newElement.setAttribute("count", "25");
//  var div = querySelector('#sample_container_id');
//  div.append(newElement);
//}


