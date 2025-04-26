class UserModel {
  final String id;
  final String fullName;
  final String username;
  final String discriminator; // Random 4-digit number (e.g., "1234")
  final String displayName; // Display name (e.g., "Alice")
  final String email;
  final String profileImageUrl;
  final bool isOnline;
  final DateTime lastSeen;

  UserModel({
    required this.id,
    required this.fullName,
    required this.username,
    required this.discriminator,
    required this.displayName,
    required this.email,
    required this.profileImageUrl,
    required this.isOnline,
    required this.lastSeen,
  });

  // Getter to return username with discriminator (e.g., "alice_s#1234")
  String get fullUsername => '$username#$discriminator';

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullName': fullName,
      'username': username,
      'discriminator': discriminator,
      'displayName': displayName,
      'email': email,
      'profileImageUrl': profileImageUrl,
      'isOnline': isOnline,
      'lastSeen': lastSeen.toIso8601String(),
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      username: json['username'] as String,
      discriminator: json['discriminator'] as String,
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      isOnline: json['isOnline'] as bool,
      lastSeen: DateTime.parse(json['lastSeen'] as String),
    );
  }
}
