import 'package:polymer/polymer.dart';
import 'dart:html';
import '../models/model.dart';
import 'dart:convert';
import 'package:core_elements/core_collapse.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('menu-category')
class MenuCategory extends PolymerElement {
  @observable List<MenuItem> menuItems;
  @published String categoryName;
  
  MenuCategory.created() : super.created() {
    getItem();
  }

  void categoryClicked (Event e, var detail, Node target) {
  	CoreCollapse menu = shadowRoot.querySelector("#menu");
  	menu.toggle();
  }
  
  void getItem() {
    var path = 'http://localhost:8080/menu/item/list/3';

    HttpRequest.getString(path)
        .then((String fileContents) {
          handleJson(fileContents);
        })
        .catchError((Error error) {
          Element div = querySelector('#rootPanel');
          div.setInnerHtml(error.toString());
        });
  }


  void handleJson(String response) {
    List data = JSON.decode(response);
    menuItems = new List();
    data.forEach((menuItem) => menuItems.add(new MenuItem.fromJson(menuItem)));
//    for(Map itemMap in data) {
//      menuItems.add(new MenuItem.fromJson(itemMap));
//    }
    
  }
}