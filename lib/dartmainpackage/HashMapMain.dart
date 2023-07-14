import 'dart:collection';

void main() {
  var city = HashMap<int, String>();

  city[16] = "Bursa";
  city[34] = "Istanbul";
  print(city);
  city[16] = "New Bursa";
  print(city);

  String? data = city[16];
  print(data);
  printHashMapForLoop(city);

  print("remove 16 ");
  city.remove(16);
  city.remove(16);
  printHashMapForLoop(city);
  city.clear();
  print(city);
  printHashMapForLoop(city);
}

void printHashMapForLoop(HashMap<int, String> hashMap) {
  print("--> Print Hashmap With For loop :");

  for (var a in hashMap.keys) {
    print("$a");
  }

  for (var a in hashMap.keys) {
    print("${hashMap[a]}");
  }
}
