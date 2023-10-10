Future<List<int>> multiplyList(List<int> listData, int multiplier) async {
  List<int> hasil = [];

  await Future.forEach(listData, (int list) async {
    await Future.delayed(Duration(seconds: 1));
    hasil.add(list * multiplier);
  });

  return hasil;
}

void main() async {
  List<int> data = [2, 5, 4, 1, 6];
  int multiplier = 3;

  List<int> hasil = await multiplyList(data, multiplier);

  print("List data: $data");
  print("Hasil : $multiplier: $hasil");
}
