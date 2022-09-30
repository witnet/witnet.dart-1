part of 'schema.dart';


class DataRequestEligibilityClaim {
  DataRequestEligibilityClaim({
    required this.proof,
  });

  VrfProof proof;

  factory DataRequestEligibilityClaim.fromRawJson(String str) =>
      DataRequestEligibilityClaim.fromJson(json.decode(str));

  String get rawJson => json.encode(jsonMap());

  factory DataRequestEligibilityClaim.fromJson(Map<String, dynamic> json) =>
      DataRequestEligibilityClaim(
        proof: VrfProof.fromJson(json["proof"]),
      );

  Map<String, dynamic> jsonMap({bool asHex=false}) => {
        "proof": proof.jsonMap(),
      };
}
