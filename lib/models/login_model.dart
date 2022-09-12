class LoginModelYetkiliKurumlar {
  String? KurumAdi;
  int? KurumId;

  LoginModelYetkiliKurumlar({
    this.KurumAdi,
    this.KurumId,
  });
  LoginModelYetkiliKurumlar.fromJson(Map<String, dynamic> json) {
    KurumAdi = json['KurumAdi']?.toString();
    KurumId = json['KurumId']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['KurumAdi'] = KurumAdi;
    data['KurumId'] = KurumId;
    return data;
  }
}

class LoginModel {
  String? Sonuc;
  String? UserToken;
  String? LoginToken;
  String? UserName;
  String? ProfilePic;
  String? MesajBaslik;
  String? MesajIcerik;
  List<LoginModelYetkiliKurumlar?>? YetkiliKurumlar;

  LoginModel({
    this.Sonuc,
    this.UserToken,
    this.LoginToken,
    this.UserName,
    this.ProfilePic,
    this.YetkiliKurumlar,
    this.MesajBaslik,
    this.MesajIcerik,
  });
  LoginModel.fromJson(Map<String, dynamic> json) {
    Sonuc = json['Sonuc']?.toString();
    UserToken = json['UserToken']?.toString();
    LoginToken = json['LoginToken']?.toString();
    UserName = json['UserName']?.toString();
    ProfilePic = json['ProfilePic']?.toString();
    MesajBaslik = json['MesajBaslik']?.toString();
    MesajIcerik = json['MesajIcerik']?.toString();
    if (json['YetkiliKurumlar'] != null) {
      final v = json['YetkiliKurumlar'];
      final arr0 = <LoginModelYetkiliKurumlar>[];
      v.forEach((v) {
        arr0.add(LoginModelYetkiliKurumlar.fromJson(v));
      });
      YetkiliKurumlar = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Sonuc'] = Sonuc;
    data['UserToken'] = UserToken;
    data['LoginToken'] = LoginToken;
    data['UserName'] = UserName;
    data['ProfilePic'] = ProfilePic;
    data['MesajBaslik'] = UserName;
    data['MesajIcerik'] = ProfilePic;
    if (YetkiliKurumlar != null) {
      final v = YetkiliKurumlar;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['YetkiliKurumlar'] = arr0;
    }
    return data;
  }
}
