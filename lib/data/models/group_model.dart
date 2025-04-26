class GroupModel {
  final String id;
  final String name;
  final List<String> members;
  final String lastMessage;
  final DateTime lastMessageTime;

  GroupModel({
    required this.id,
    required this.name,
    required this.members,
    required this.lastMessage,
    required this.lastMessageTime,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'members': members,
      'lastMessage': lastMessage,
      'lastMessageTime': lastMessageTime.toIso8601String(),
    };
  }

  factory GroupModel.fromJson(Map<String, dynamic> json) {
    return GroupModel(
      id: json['id'] as String,
      name: json['name'] as String,
      members: List<String>.from(json['members'] as List),
      lastMessage: json['lastMessage'] as String,
      lastMessageTime: DateTime.parse(json['lastMessageTime'] as String),
    );
  }
}
