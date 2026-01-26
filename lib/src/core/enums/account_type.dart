enum AccountType {
  personal,
  business,
  internal,
  newImmigrantOrStudent,
  none;

  bool get isPersonal => this == personal;
  bool get isBusiness => this == business;
  bool get isInternal => this == internal;
  bool get isNone => this == none;
  bool get isNewImmigrantOrStudent => this == newImmigrantOrStudent;
}
