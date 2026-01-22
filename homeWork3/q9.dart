// Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
// count with the original list length and print a message if duplicates were removed.
void main() {
  List<String> players = [
    "ronaldo",
    "valverde",
    "saka",
    "ronaldo",
    "mastantono",
    "saka",
  ];
  List<String> uniquePlayers = players.toSet().toList();

  int originalLength = players.length;
  int uniqueLength = uniquePlayers.length;

  if (originalLength > uniqueLength) {
    int duplicated = originalLength - uniqueLength;
    print("we removed $duplicated duplicate item(s)");
  }
}
