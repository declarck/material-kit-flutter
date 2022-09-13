class LoginModelYetkiliKurumlar {
  String? kurumAdi;
  int? kurumId;

  LoginModelYetkiliKurumlar({
    this.kurumAdi,
    this.kurumId,
  });
  LoginModelYetkiliKurumlar.fromJson(Map<String, dynamic> json) {
    kurumAdi = json['KurumAdi']?.toString();
    kurumId = json['KurumId']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['KurumAdi'] = kurumAdi;
    data['KurumId'] = kurumId;
    return data;
  }
}

class LoginModel {
  String? sonuc;
  String? userToken;
  String? loginToken;
  String? username;
  String? profilePic;
  String? mesajBaslik;
  String? mesajIcerik;
  List<LoginModelYetkiliKurumlar?>? yetkiliKurumlar;

  LoginModel({
    this.sonuc,
    this.userToken,
    this.loginToken,
    this.username,
    this.profilePic,
    this.yetkiliKurumlar,
    this.mesajBaslik,
    this.mesajIcerik,
  });
  LoginModel.fromJson(Map<String, dynamic> json) {
    sonuc = json['Sonuc']?.toString();
    userToken = json['UserToken']?.toString();
    loginToken = json['LoginToken']?.toString();
    username = json['UserName']?.toString();
    profilePic = json['ProfilePic']?.toString();
    mesajBaslik = json['MesajBaslik']?.toString();
    mesajIcerik = json['MesajIcerik']?.toString();
    if (json['YetkiliKurumlar'] != null) {
      final v = json['YetkiliKurumlar'];
      final arr0 = <LoginModelYetkiliKurumlar>[];
      v.forEach((v) {
        arr0.add(LoginModelYetkiliKurumlar.fromJson(v));
      });
      yetkiliKurumlar = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Sonuc'] = sonuc;
    data['UserToken'] = userToken;
    data['LoginToken'] = loginToken;
    data['UserName'] = username;
    data['ProfilePic'] = profilePic;
    data['MesajBaslik'] = username;
    data['MesajIcerik'] = profilePic;
    if (yetkiliKurumlar != null) {
      final v = yetkiliKurumlar;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['YetkiliKurumlar'] = arr0;
    }
    return data;
  }
}
