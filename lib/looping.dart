import 'dart:math';

/*
aturan deklarasi variabel: camelCase
ex: var firstName;

key dalam Map
{
  "first_name": "...",
}

penamaan List
product     --> variabel
products    --> List
productList --> List

class pakai: sentenceCase (ClassName)
ex: ProductCategory, KategoriProduk
*/
void main() {
  // List<Map>
  List<Map<String, dynamic>> products = [
    //Map
    {
      "photo": "https://xxx",
      "name": "Roti Gandum",
      "price": 25000,
      "category": "food",
      "description": "Lorem ipsum dolor site ..."
    },
    {
      "photo": "https://abc",
      "name": "Biskuit",
      "price": 15000,
      "category": "snack",
      "description": "Enak dan bergizi ..."
    }
  ];

  // print(products.length);
  for (var i = 0; i < products.length; i++) {
    // REKOMENDASI
    Map<String, dynamic> product = products[i];
    // LEBIH CLEAN CODE
    String productName = product["name"]; // var (boleh)
    int productPrice = product["price"]; // var (boleh)
    String productCategory = product["category"]; // var (boleh)

    // print(product);
    print("${productName} | ${productPrice} | ${productCategory}");
    print("=========");
  }

  // Ubah nilai
  for (var i = 0; i < products.length; i++) {
    var product = products[i];
    product["name"] = "Product $i";
    product["price"] = Random().nextInt(1000);
  }

  // Tampilkan
  for (var i = 0; i < products.length; i++) {
    var product = products[i];
    print("${product["name"]} - ${product["price"]}");
  }
  print("=========");

  // ==============
  Map<String, dynamic> data = {
    "page_count": 15,
    "data": [
      {
        "photo": "https://xxx",
        "name": "Roti Gandum",
        "price": "25000",
        "category": {
          "category_id": 1,
          "category_name": "Roti",
        },
        "description": "Lorem ipsum dolor site ..."
      },
      {
        "photo": "https://abc",
        "name": "Biskuit",
        "price": "15000",
        "category": {
          "category_id": 2,
          "category_name": "Snack",
        },
        "description": "Enak dan bergizi ..."
      },
    ],
  };

  print(data["data"].length);
  for (var i = 0; i < data["data"].length; i++) {
    var tmp = data["data"][i];

    // print(product);
    print(tmp);
    print(tmp["category"]["category_name"]);
    print("=========");
  }

  var productName = data["data"][1]["name"];
  var categoryName = data["data"][1]["category"]["category_name"];
  print("${productName} - ${categoryName}");
  print("=========");

  Map<String, dynamic> product = data["data"][0];
  print(
      "${product["category"]["category_id"]} - ${product["category"]["category_name"]}");
}

// nodemon --exec dart lib/looping.dart