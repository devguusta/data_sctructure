void main() {
  List<int> list = [
    0,
    1,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
  ];
  int userValue = list[5];
  int max = list.length - 1;
  int min = 0;

  binarySearch(userValue: userValue, min: min, max: max, list: list);
  binary(list: list, item: list[11]);
}

binary({required List<int> list, required int item}) {
  int min = 0;
  int max = list.length - 1;

  while (min <= max) {
    int mid = ((max + min) / 2).round();
    int value = list[mid];
    if (value == item) {
      print("mid $mid");

      print("O valor é $value na posição $item");
    }
    if (value > item) {
      max = mid - 1;
      print("o item  é $item");
    } else {
      min = mid + 1;
      print(" o item  é esse : $item");
    }
  }
}

binarySearch(
    {required List<int> list,
    required int userValue,
    required int min,
    required int max}) {
  if (max >= min) {
    print('min $min');
    print('max $max');
    int mid = ((max + min) / 2).floor();
    if (userValue == list[mid]) {
      print('your item is at index: ${mid}');
    } else if (userValue > list[mid]) {
      binarySearch(list: list, userValue: userValue, min: mid + 1, max: max);
    } else {
      binarySearch(list: list, userValue: userValue, min: min, max: mid - 1);
    }
  }
  return null;
}
