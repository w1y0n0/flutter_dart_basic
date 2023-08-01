// nodemon --exec dart demo.dart

class Product {
  static String productName = "Digital Product";
}

void main() {
  // print("Hello World!!!");

  // deklarasi varabel
  // tipe_data nama_variabel = initial_value;
  String name = "LabSI Project";
  int price = 250;
  double discount = 25.23;
  bool isLogin = false; //true|false

  // Null Safety
  double? harga = 25000;
  double? qty; //nullable
  double total = harga * (qty ?? 0);

  // Output
  print("Hello, nama saya " + name);
  print("Hello, nama saya $name");
  print("Hello, nama saya ${Product.productName}");
  print(total);
}
