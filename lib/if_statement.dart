void main() {
  /*
  if(condition){
    //if-true
  }else{
    //if-false
  }
  */

  var total = 25000;
  var productName = "Product 2";
  double discount = 0;

  if (total == 25000 && productName == "GG Filter 20") {
    discount = 0.1;
    print("Anda mendapat potongan 10%");
  } else if (total == 25000 && productName == "Product 2") {
    discount = 0.2;
    print("Anda mendapat potongan 20%");
  } else {
    print("Anda tidak mendapatkan potongan");
  }
}

// nodemon --exec dart lib/if_statement.dart
