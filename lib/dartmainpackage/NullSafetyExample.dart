void main() {
  String? name = "Ahmet";
  print(
      "name? : ${name?.toUpperCase()}"); // This data may be null.  if it is null, then work without stop the program.

  print(
      "name? : ${name!.toUpperCase()}"); // if you belived %100  that this data is not null, then you can use this.

  if (name != null) {} // if-null check is the best among these,
}
