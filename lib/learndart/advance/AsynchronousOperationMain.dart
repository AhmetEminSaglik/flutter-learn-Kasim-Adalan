Future<void> main() async {
  print("Waiting to retrive data...");
  print("Data is retriving");
  var data = await getDataFromDatabase();
  print(
      "Retrived Data : $data"); //this line must be wait to finish process of data variable which get data from the async function.
}

Future<String> getDataFromDatabase() async {
  for (var i = 1; i <= 5; i++) {
    Future.delayed(
        Duration(seconds: i), () => print("Retrived data amount :${i * 20}"));
  }
  return Future.delayed(Duration(seconds: 5), () => "Database dataset");
}
