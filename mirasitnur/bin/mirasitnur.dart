void main(List<String> arguments) {
  //1. implementasi rumus lingkaran, diketahui jari-jari adalah 8
  double phi = 3.14;
  int r = 8;

  double hitung = phi * r * r;

  //2. buatlah 3 variabel yang berisi string lalu sambungkan seluruh string tersebut dan tampilkan dilayar
  var string1 = "Hallo";
  var string2 = "Nama saya";
  var string3 = "Mira Siti Nur Holizah";

  var gabung = string1 + string2 + string3;

  //3. tampilkan nilai faktorial dari 10, 20, 30
  int angka1 = 10;
  int angka2 = 20;
  int angka3 = 30;

  int faktorial1 = hitungFaktorial(angka1);
  int faktorial2 = hitungFaktorial(angka2);
  int faktorial3 = hitungFaktorial(angka3);

  //print no.1
  print(hitung);

  //print no.2
  print(gabung);

  //print no.3
  print("Faktorial dari $angka1 adalah $faktorial1");
  print("Faktorial dari $angka2 adalah $faktorial2");
  print("Faktorial dari $angka3 adalah $faktorial3");
}

int hitungFaktorial(int n) {
  int hasil = 1;
  for (int i = 1; i <= n; i++) {
    hasil *= i;
  }
  return hasil;
}
