import '../models/user_model.dart';
import '../models/message_model.dart';
import '../models/chat_model.dart';
import '../models/group_model.dart';

class DummyDataSource {
  // Dummy data storage
  late final List<UserModel> _users;
  late final List<MessageModel> _messages;
  late final List<ChatModel> _chats;
  late final List<GroupModel> _groups;

  DummyDataSource() {
    // Initialize dummy data
    _initializeData();
  }

  void _initializeData() {
    // Users
    _users = [
      UserModel(
        id: "1",
        fullName: "Alice Smith",
        username: "alice_s",
        discriminator: "1234",
        displayName: "Alice",
        email: "alice@example.com",
        profileImageUrl: "https://example.com/profiles/alice.jpg",
        isOnline: true,
        lastSeen: DateTime.now().subtract(Duration(minutes: 5)),
      ),
      UserModel(
        id: "2",
        fullName: "Bob Johnson",
        username: "bob_j",
        discriminator: "5678",
        displayName: "Bob",
        email: "bob@example.com",
        profileImageUrl: "https://example.com/profiles/bob.jpg",
        isOnline: false,
        lastSeen: DateTime.now().subtract(Duration(hours: 1)),
      ),
      UserModel(
        id: "3",
        fullName: "Charlie Brown",
        username: "charlie_b",
        discriminator: "9012",
        displayName: "Charlie",
        email: "charlie@example.com",
        profileImageUrl: "https://example.com/profiles/charlie.jpg",
        isOnline: true,
        lastSeen: DateTime.now().subtract(Duration(minutes: 10)),
      ),
      UserModel(
        id: "4",
        fullName: "You",
        username: "you",
        discriminator: "3456",
        displayName: "You",
        email: "you@example.com",
        profileImageUrl: "https://example.com/profiles/you.jpg",
        isOnline: true,
        lastSeen: DateTime.now(),
      ),
    ];

    // Messages
    _messages = [
      MessageModel(
        id: "m1",
        senderId: "4",
        content: "Merhaba Alice!",
        timestamp: DateTime.now().subtract(Duration(minutes: 30)),
        isRead: true,
      ),
      MessageModel(
        id: "m2",
        senderId: "1",
        content: "Merhaba! Nasilsin?",
        timestamp: DateTime.now().subtract(Duration(minutes: 25)),
        isRead: false,
      ),
      MessageModel(
        id: "m3",
        senderId: "4",
        content: "İyiyim, sen Nasilsin?",
        timestamp: DateTime.now().subtract(Duration(minutes: 20)),
        isRead: false,
      ),
      MessageModel(
        id: "m4",
        senderId: "4",
        content: "Bob, Nasilsin?",
        timestamp: DateTime.now().subtract(Duration(minutes: 15)),
        isRead: true,
      ),
      MessageModel(
        id: "m5",
        senderId: "2",
        content: "İyiyim, teşekkürler!",
        timestamp: DateTime.now().subtract(Duration(minutes: 10)),
        isRead: false,
      ),
    ];

    // Chats
    _chats = [
      ChatModel(
        id: "c1",
        participants: ["4", "1"], // You and Alice
        lastMessage: "İyiyim, sen Nasilsin?",
        lastMessageTime: DateTime.now().subtract(Duration(minutes: 20)),
      ),
      ChatModel(
        id: "c2",
        participants: ["4", "2"], // You and Bob
        lastMessage: "İyiyim, teşekkürler!",
        lastMessageTime: DateTime.now().subtract(Duration(minutes: 10)),
      ),
    ];

    // Groups
    _groups = [
      GroupModel(
        id: "g1",
        name: "Arkadaşlar",
        members: ["1", "2", "4"], // Alice, Bob, You
        lastMessage: "Herkese merhaba!",
        lastMessageTime: DateTime.now().subtract(Duration(minutes: 5)),
      ),
    ];
  }

  // Methods to interact with dummy data
  List<UserModel> getUsers() {
    return _users;
  }

  List<ChatModel> getChats(String userId) {
    return _chats.where((chat) => chat.participants.contains(userId)).toList();
  }

  List<MessageModel> getMessages(String chatId) {
    // For simplicity, return messages based on chat participants
    if (chatId == "c1") {
      return _messages
          .where(
            (msg) =>
                msg.id.startsWith("m1") ||
                msg.id.startsWith("m2") ||
                msg.id.startsWith("m3"),
          )
          .toList();
    } else if (chatId == "c2") {
      return _messages
          .where((msg) => msg.id.startsWith("m4") || msg.id.startsWith("m5"))
          .toList();
    }
    return [];
  }

  List<GroupModel> getGroups(String userId) {
    return _groups.where((group) => group.members.contains(userId)).toList();
  }

  void sendMessage(String chatId, MessageModel message) {
    _messages.add(message);
    final chat = _chats.firstWhere((c) => c.id == chatId);
    chat.lastMessage = message.content;
    chat.lastMessageTime = message.timestamp;
  }

  void createGroup(GroupModel group) {
    _groups.add(group);
  }
}
