import 'dart:convert';

class Debtor {
  String debtorId;
  String name;
  String phoneNumber;
  Debtor({
    required this.debtorId,
    required this.name,
    required this.phoneNumber,
  });

  Debtor copyWith({
    String? debtorId,
    String? name,
    String? phoneNumber,
  }) {
    return Debtor(
      debtorId: debtorId ?? this.debtorId,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'debtorId': debtorId});
    result.addAll({'name': name});
    result.addAll({'phoneNumber': phoneNumber});

    return result;
  }

  factory Debtor.fromMap(Map<String, dynamic> map) {
    return Debtor(
      debtorId: map['debtorId'] ?? '',
      name: map['name'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Debtor.fromJson(String source) => Debtor.fromMap(json.decode(source));

  @override
  String toString() =>
      'Debtor(debtorId: $debtorId, name: $name, phoneNumber: $phoneNumber)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Debtor &&
        other.debtorId == debtorId &&
        other.name == name &&
        other.phoneNumber == phoneNumber;
  }

  @override
  int get hashCode => debtorId.hashCode ^ name.hashCode ^ phoneNumber.hashCode;
}
