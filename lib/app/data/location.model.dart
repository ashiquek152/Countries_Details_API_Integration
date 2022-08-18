// To parse required this JSON data, do
//
//     final locationModel = locationModelFromJson(jsonString);

import 'dart:convert';

List<LocationModel> locationModelFromJson(String str) =>
    List<LocationModel>.from(
        json.decode(str).map((x) => LocationModel.fromJson(x)));

String locationModelToJson(List<LocationModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LocationModel {
  LocationModel({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.currencies,
    required this.idd,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    required this.area,
    required this.demonyms,
    required this.flag,
    required this.maps,
    required this.population,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo,
    required this.cioc,
    required this.borders,
    required this.gini,
    required this.fifa,
    required this.postalCode,
  });

  Name name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  bool? independent;
  String? status;
  bool? unMember;
  Map<String, Currency>? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Map<String?, Translation> translations;
  List<double>? latlng;
  bool? landlocked;
  double? area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  CoatOfArms? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  String? cioc;
  List<String>? borders;
  Gini? gini;
  String? fifa;
  PostalCode? postalCode;

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        name: Name.fromJson(json["name"]),
        tld: json["tld"] == null
            ? null
            : List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"],
        cca3: json["cca3"],
        independent: json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: json["currencies"] == null
            ? null
            : Map.from(json["currencies"]).map(
                (k, v) => MapEntry<String, Currency>(k, Currency.fromJson(v))),
        idd: Idd.fromJson(json["idd"]),
        capital: json["capital"] == null
            ? null
            : List<String>.from(json["capital"].map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"],
        subregion: json["subregion"],
        languages: json["languages"] == null
            ? null
            : Languages.fromJson(json["languages"]),
        translations: Map.from(json["translations"]).map((k, v) =>
            MapEntry<String, Translation>(k, Translation.fromJson(v))),
        latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
        landlocked: json["landlocked"],
        area: json["area"],
        demonyms: json["demonyms"] == null
            ? null
            : Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"],
        maps: Maps.fromJson(json["maps"]),
        population: json["population"],
        car: Car.fromJson(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<String>.from(json["continents"].map((x) => x)),
        flags: CoatOfArms.fromJson(json["flags"]),
        coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
        cioc: json["cioc"],
        borders: json["borders"] == null
            ? null
            : List<String>.from(json["borders"].map((x) => x)),
        gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
        fifa: json["fifa"],
        postalCode: json["postalCode"] == null
            ? null
            : PostalCode.fromJson(json["postalCode"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "tld": List<dynamic>.from(tld!.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        "currencies": Map.from(currencies!)
            .map((k, v) => MapEntry<String, dynamic>(k, v!.toJson())),
        "idd": idd!.toJson(),
        "capital": List<dynamic>.from(capital!.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings!.map((x) => x)),
        "region": region,
        "subregion": subregion,
        "languages": languages!.toJson(),
        "translations": Map.from(translations)
            .map((k, v) => MapEntry<String, dynamic>(k, v!.toJson())),
        "latlng": List<dynamic>.from(latlng!.map((x) => x)),
        "landlocked": landlocked,
        "area": area,
        "demonyms": demonyms!.toJson(),
        "flag": flag,
        "maps": maps!.toJson(),
        "population": population,
        "car": car!.toJson(),
        "timezones": List<dynamic>.from(timezones!.map((x) => x)),
        "continents": List<dynamic>.from(continents!.map((x) => x)),
        "flags": flags!.toJson(),
        "coatOfArms": coatOfArms!.toJson(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo!.toJson(),
        "cioc": cioc,
        "borders":
            borders == null ? null : List<dynamic>.from(borders!.map((x) => x)),
        "gini": gini == null ? null : gini!.toJson(),
        "fifa": fifa,
        "postalCode": postalCode == null ? null : postalCode!.toJson(),
      };
}

class CapitalInfo {
  CapitalInfo({
    required this.latlng,
  });

  List<double>? latlng;

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json["latlng"] == null
            ? null
            : List<double>.from(json["latlng"].map((x) => x.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "latlng": List<dynamic>.from(latlng!.map((x) => x)),
      };
}

class Car {
  Car({
    required this.signs,
    required this.side,
  });

  List<String>? signs;
  String? side;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: json["signs"] == null
            ? null
            : List<String>.from(json["signs"].map((x) => x)),
        side: json["side"],
      );

  Map<String, dynamic> toJson() => {
        "signs": List<dynamic>.from(signs!.map((x) => x)),
        "side": side,
      };
}

class CoatOfArms {
  CoatOfArms({
    required this.png,
    required this.svg,
  });

  String? png;
  String? svg;

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"],
        svg: json["svg"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
      };
}

class Currency {
  Currency({
    required this.name,
    required this.symbol,
  });

  String? name;
  String? symbol;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };
}

class Demonyms {
  Demonyms({
    required this.eng,
    required this.fra,
  });

  Eng eng;
  Eng? fra;

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
      );

  Map<String, dynamic> toJson() => {
        "eng": eng.toJson(),
        "fra": fra == null ? null : fra!.toJson(),
      };
}

class Eng {
  Eng({
    required this.f,
    required this.m,
  });

  String f;
  String m;

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
      );

  Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
      };
}

class Gini {
  Gini({
    required this.the2011,
  });

  double? the2011;

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
        the2011: json["2011"],
      );

  Map<String, dynamic> toJson() => {
        "2011": the2011,
      };
}

class Idd {
  Idd({
    required this.root,
    required this.suffixes,
  });

  String? root;
  List<String>? suffixes;

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"],
        suffixes: json["suffixes"] == null
            ? null
            : List<String>.from(json["suffixes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "root": root,
        "suffixes": List<dynamic>.from(suffixes!.map((x) => x)),
      };
}

class Languages {
  Languages({
    required this.eng,
    required this.hin,
    required this.tam,
  });

  String? eng;
  String? hin;
  String? tam;

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        eng: json["eng"],
        hin: json["hin"],
        tam: json["tam"],
      );

  Map<String, dynamic> toJson() => {
        "eng": eng,
        "hin": hin,
        "tam": tam,
      };
}

class Maps {
  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  String googleMaps;
  String openStreetMaps;

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
      );

  Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
      };
}

class Name {
  Name({
    required this.common,
    required this.official,
    required this.nativeName,
  });

  String common;
  String official;
  NativeName? nativeName;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: json["nativeName"] == null
            ? null
            : NativeName.fromJson(json["nativeName"]),
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName != null ? nativeName!.toJson() : null,
      };
}

class NativeName {
  NativeName({
    required this.eng,
    required this.hin,
    required this.tam,
  });

  Translation? eng;
  Translation? hin;
  Translation? tam;

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        eng: json["eng"] == null ? null : Translation.fromJson(json["eng"]),
        hin: json["hin"] == null ? null : Translation.fromJson(json["hin"]),
        tam: json["tam"] == null ? null : Translation.fromJson(json["tam"]),
      );

  Map<String, dynamic> toJson() => {
        "eng": eng ?? eng!.toJson(),
        "hin": hin == null ? null : hin!.toJson(),
        "tam": tam == null ? null : tam!.toJson(),
      };
}

class Translation {
  Translation({
    required this.official,
    required this.common,
  });

  String official;
  String common;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
      );

  Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
      };
}

class PostalCode {
  PostalCode({
    required this.format,
    required this.regex,
  });

  String? format;
  String? regex;

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"],
      );

  Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex,
      };
}
