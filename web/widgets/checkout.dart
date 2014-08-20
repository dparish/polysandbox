import 'package:polymer/polymer.dart';
import '../models/model.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('menu-checkout')
class Checkout extends PolymerElement {
  @published double total;

  Checkout.created() : super.created() {
    total = 0;
  }

  void categoryClicked (Event e, var detail, Node target) {
    MenuItem menuItem = detail;
    total += menuItem.price;
  }
}