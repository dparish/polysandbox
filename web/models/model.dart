class Model {
  int id;
  String name;
  
  Model.fromJsonMap(Map json) {
    id = json['id'];
    name = json['name'];
  }
  
  Model.create();
  
  Model(this.id, this.name);
}

class MenuItem extends Model {
  Model category;
  Model size;
  double price;
  
  MenuItem(int id, String name, this.category, this.size, this.price) : super(id, name);
  
  MenuItem.fromJson(Map json) : super.create(){
    id = json['id'];
    name = json['name'];
    price = json['price'];
    category = new Model.fromJsonMap(json['category']); 
    size = new Model.fromJsonMap(json['size']); 
  }
}