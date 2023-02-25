import 'dart:convert';

import 'package:flutter/foundation.dart';

class LoanSecurityItem {
  String itemId;
  String itemName;
  String marketValue;
  List<String> photoUrls;
  LoanSecurityItem({
    required this.itemId,
    required this.itemName,
    required this.marketValue,
    required this.photoUrls,
  });

  LoanSecurityItem copyWith({
    String? itemId,
    String? itemName,
    String? marketValue,
    List<String>? photoUrls,
  }) {
    return LoanSecurityItem(
      itemId: itemId ?? this.itemId,
      itemName: itemName ?? this.itemName,
      marketValue: marketValue ?? this.marketValue,
      photoUrls: photoUrls ?? this.photoUrls,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'itemId': itemId});
    result.addAll({'itemName': itemName});
    result.addAll({'marketValue': marketValue});
    result.addAll({'photoUrls': photoUrls});

    return result;
  }

  factory LoanSecurityItem.fromMap(Map<String, dynamic> map) {
    return LoanSecurityItem(
      itemId: map['itemId'] ?? '',
      itemName: map['itemName'] ?? '',
      marketValue: map['marketValue'] ?? '',
      photoUrls: List<String>.from(map['photoUrls']),
    );
  }

  String toJson() => json.encode(toMap());

  factory LoanSecurityItem.fromJson(String source) =>
      LoanSecurityItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LoanSecurityItem(itemId: $itemId, itemName: $itemName, marketValue: $marketValue, photoUrls: $photoUrls)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoanSecurityItem &&
        other.itemId == itemId &&
        other.itemName == itemName &&
        other.marketValue == marketValue &&
        listEquals(other.photoUrls, photoUrls);
  }

  @override
  int get hashCode {
    return itemId.hashCode ^
        itemName.hashCode ^
        marketValue.hashCode ^
        photoUrls.hashCode;
  }
}
