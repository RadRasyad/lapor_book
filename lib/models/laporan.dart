class Laporan {
  final String uid;
  final String docId;

  final String judul;
  final String instansi;
  String? deskripsi;
  String? gambar;
  final String nama;
  final String status;
  final DateTime tanggal;
  final String maps;
  List<Komentar>? komentar;
  List<Like>? like;

  Laporan({
    required this.uid,
    required this.docId,
    required this.judul,
    required this.instansi,
    this.deskripsi,
    this.gambar,
    required this.nama,
    required this.status,
    required this.tanggal,
    required this.maps,
    this.komentar,
    this.like
  });
}

class Komentar {
  final String nama;
  final String isi;

  Komentar({
    required this.nama,
    required this.isi,
  });
}

class Like {
  final String docId;
  final String uid;
  final String nama;
  final DateTime tanggal;

  Like({
    required this.docId,
    required this.uid,
    required this.nama,
    required this.tanggal,
  });
}

enum Status { Posted, Process, Done }