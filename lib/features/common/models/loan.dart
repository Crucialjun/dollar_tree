import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:dollar_tree/features/common/models/loan_security_item.dart';

class Loan {
  String loanId;
  String dateTaken;
  String principalAmount;
  List<LoanSecurityItem> securityItems;
  String balance;
  Loan({
    required this.loanId,
    required this.dateTaken,
    required this.principalAmount,
    required this.securityItems,
    required this.balance,
  });

  Loan copyWith({
    String? loanId,
    String? dateTaken,
    String? principalAmount,
    List<LoanSecurityItem>? securityItems,
    String? balance,
  }) {
    return Loan(
      loanId: loanId ?? this.loanId,
      dateTaken: dateTaken ?? this.dateTaken,
      principalAmount: principalAmount ?? this.principalAmount,
      securityItems: securityItems ?? this.securityItems,
      balance: balance ?? this.balance,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'loanId': loanId});
    result.addAll({'dateTaken': dateTaken});
    result.addAll({'principalAmount': principalAmount});
    result.addAll(
        {'securityItems': securityItems.map((x) => x.toMap()).toList()});
    result.addAll({'balance': balance});

    return result;
  }

  factory Loan.fromMap(Map<String, dynamic> map) {
    return Loan(
      loanId: map['loanId'] ?? '',
      dateTaken: map['dateTaken'] ?? '',
      principalAmount: map['principalAmount'] ?? '',
      securityItems: List<LoanSecurityItem>.from(
          map['securityItems']?.map((x) => LoanSecurityItem.fromMap(x))),
      balance: map['balance'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Loan.fromJson(String source) => Loan.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Loan(loanId: $loanId, dateTaken: $dateTaken, principalAmount: $principalAmount, securityItems: $securityItems, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Loan &&
        other.loanId == loanId &&
        other.dateTaken == dateTaken &&
        other.principalAmount == principalAmount &&
        listEquals(other.securityItems, securityItems) &&
        other.balance == balance;
  }

  @override
  int get hashCode {
    return loanId.hashCode ^
        dateTaken.hashCode ^
        principalAmount.hashCode ^
        securityItems.hashCode ^
        balance.hashCode;
  }
}
