class Hewan {
  int berat;

  Hewan(this.berat);
}

class Mobil {
  int kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    if (hitungTotalMuatan() + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print("");
      print("Muatan berhasil ditambahkan! ");
      print("Total berat : ${hitungTotalMuatan()} kg");
    } else {
      print("Muatan melebihi kapasitas mobil!");
    }
  }

  int hitungTotalMuatan() {
    return muatan.fold(0, (total, hewan) => total + hewan.berat);
  }
}

void main(List<String> arguments) {
  Mobil mobil = Mobil(300);
  print("Mobil ini memiliki kapasitas : ${mobil.kapasitas} kg");

  Hewan kucing = Hewan(25);
  Hewan ular = Hewan(100);
  Hewan kambing = Hewan(75);

  mobil.tambahMuatan(kucing);
  mobil.tambahMuatan(ular);
  mobil.tambahMuatan(kambing);

  print("");
  print(
      "Total berat muatan mobil yang diangkut: ${mobil.hitungTotalMuatan()} kg");
}
