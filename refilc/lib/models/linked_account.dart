enum AccountType {
  apple,
  google,
  meta,
  qwid,
}

class LinkedAccount {
  AccountType type;
  String username;
  String displayName;
  String id;
  Map? json;

  LinkedAccount({
    required this.type,
    required this.username,
    required this.displayName,
    required this.id,
    required this.json,
  });

  factory LinkedAccount.fromJson(Map json) {
    return LinkedAccount(
      type: json['type'] == 'apple'
          ? AccountType.apple
          : json['type'] == 'google'
              ? AccountType.google
              : json['type'] == 'meta'
                  ? AccountType.meta
                  : AccountType.qwid,
      username: json['username'],
      displayName: json['display_name'],
      id: json['id'],
      json: json,
    );
  }
}
