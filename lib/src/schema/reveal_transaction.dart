part of 'schema.dart';

class RevealTransaction {
  RevealTransaction({
    required this.body,
    required this.signatures,
  });

  RevealBody body;
  List<KeyedSignature> signatures;

  factory RevealTransaction.fromRawJson(String str) => RevealTransaction.fromJson(json.decode(str));

  String toRawJson({bool asHex = false}) => json.encode(jsonMap(asHex: asHex));

  factory RevealTransaction.fromJson(Map<String, dynamic> json) => RevealTransaction(
    body: RevealBody.fromJson(json["body"]),
    signatures: List<KeyedSignature>.from(
        json["signatures"].map((x) => KeyedSignature.fromJson(x))),
  );

  Map<String, dynamic> jsonMap({bool asHex = false}) => {
    "body": body.jsonMap(asHex: asHex),
    "signatures": List<dynamic>.from(signatures.map((x) => x.jsonMap(asHex: asHex))),
  };
}
