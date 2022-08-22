class Data {
  final String cagriId;
  final String arayanTalep;
  final String yapilanIslem;
  final String arayanKisi;
  final String cagriTarihi;
  final String takipDurumu;
  final String geriDonusSureci;
  final String kaynak;
  final String detay;

  const Data({
    this.cagriId,
    this.arayanTalep,
    this.yapilanIslem,
    this.arayanKisi,
    this.cagriTarihi,
    this.takipDurumu,
    this.geriDonusSureci,
    this.kaynak,
    this.detay,
  });

  Data copy({
    String cagriId,
    String arayanTalep,
    String yapilanIslem,
    String arayanKisi,
    String cagriTarihi,
    String takipDurumu,
    String geriDonusSureci,
    String kaynak,
    String detay,
  }) =>
      Data(
        cagriId: cagriId ?? this.cagriId,
        arayanTalep: arayanTalep ?? this.arayanTalep,
        yapilanIslem: yapilanIslem ?? this.yapilanIslem,
        arayanKisi: arayanKisi ?? this.arayanKisi,
        cagriTarihi: cagriTarihi ?? this.cagriTarihi,
        takipDurumu: takipDurumu ?? this.takipDurumu,
        geriDonusSureci: geriDonusSureci ?? this.geriDonusSureci,
        kaynak: kaynak ?? this.kaynak,
        detay: detay ?? this.detay,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Data &&
          runtimeType == other.runtimeType &&
          cagriId == other.cagriId &&
          arayanTalep == other.arayanTalep &&
          yapilanIslem == other.yapilanIslem &&
          arayanKisi == other.arayanKisi &&
          cagriTarihi == other.cagriTarihi &&
          takipDurumu == other.takipDurumu &&
          geriDonusSureci == other.geriDonusSureci &&
          kaynak == other.kaynak &&
          detay == other.detay;

  @override
  int get hashCode =>
      cagriId.hashCode ^
      arayanTalep.hashCode ^
      yapilanIslem.hashCode ^
      arayanKisi.hashCode ^
      cagriTarihi.hashCode ^
      takipDurumu.hashCode ^
      geriDonusSureci.hashCode ^
      kaynak.hashCode ^
      detay.hashCode;
}
