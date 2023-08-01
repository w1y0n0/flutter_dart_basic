void main() {
  // int age = 23;

  /*
  1. Cara deklarasi
  2. Cara ambil nilai
  3. cara ubah nilai
  */
  // List
  // list_name[index]
  List ageList = [44, 42, 54, 34, 66];
  List randomList = ["qwerty", 23.55, 212]; // dynamic
  List<String> strList = ["abc", "def", "ghi"];

  print(ageList);
  print(randomList);
  print(randomList[0]);
  print(strList[1]);

  // ubah value List
  strList[2] = "xyz";
  print(strList[2]);

  /* ================= */
  // Map
  // "key": "value"
  Map<String, dynamic> product = {
    "photo": "https://xxx",
    "name": "Roti Gandum",
    "price": "25000",
    "category": "food",
    "description": "Lorem ipsum dolor site ..."
  };

  // ubah value Map
  product["name"] = "Roma Malkist";

  print(product);
  print(product["photo"]);
  print(product["name"] + " | " + product["price"]);

  // List<Map>
  List<Map<String, dynamic>> products = [
    //Map
    {
      "photo": "https://xxx",
      "name": "Roti Gandum",
      "price": "25000",
      "category": "food",
      "description": "Lorem ipsum dolor site ..."
    },
    {
      "photo": "https://abc",
      "name": "Biskuit",
      "price": "15000",
      "category": "snack",
      "description": "Enak dan bergizi ..."
    }
  ];

  // print(products);
  print(products[1]);
  print(products[1]["photo"]);
  print(products[1]["name"] + " | " + products[1]["price"]);
}

// nodemon --exec dart lib/list.dart 