

import 'package:expedier_task_app/src/core/enums/user_profile_preference_type.dart';

extension UserProfilePreferenceTypeX on UserProfilePreferenceType {
  bool get isNone => this == UserProfilePreferenceType.none;
  bool get isSavings => this == UserProfilePreferenceType.savings;
  bool get isCashback => this == UserProfilePreferenceType.cashback;
  bool get isMultipleTransfer =>
      this == UserProfilePreferenceType.multipleTransfer;
  bool get isFinancialLiteracy =>
      this == UserProfilePreferenceType.financialLiteracy;
  bool get isTopUp => this == UserProfilePreferenceType.topUp;
  bool get isCredits => this == UserProfilePreferenceType.credits;
  bool get isInvesting => this == UserProfilePreferenceType.investing;
  bool get isTrackIncome => this == UserProfilePreferenceType.trackIncome;
  bool get isBalanceMonitoring =>
      this == UserProfilePreferenceType.balanceMonitoring;
  bool get isSecurity => this == UserProfilePreferenceType.security;
  bool get isSafety => this == UserProfilePreferenceType.safety;
  bool get isCardManagement => this == UserProfilePreferenceType.cardManagement;
}
