import '../models/user_model.dart';
import '../models/message_model.dart';
import '../models/chat_model.dart';
import '../models/group_model.dart';
import '../datasources/dummy_data_source.dart';

// Abstract repository interface
abstract class ChatRepository {
  // Get all users
  Future<List<UserModel>> getUsers();

  // Get a user by ID
  Future<UserModel?> getUserById(String userId);

  // Get chats for a user
  Future<List<ChatModel>> getChats(String userId);

  // Get messages for a chat
  Future<List<MessageModel>> getMessages(String chatId);

  // Get groups for a user
  Future<List<GroupModel>> getGroups(String userId);

  // Send a message
  Future<void> sendMessage(String chatId, MessageModel message);

  // Create a group
  Future<void> createGroup(GroupModel group);
}

// Repository implementation using DummyDataSource
class ChatRepositoryImpl implements ChatRepository {
  final DummyDataSource _dataSource;

  ChatRepositoryImpl(this._dataSource);

  @override
  Future<List<UserModel>> getUsers() async {
    return _dataSource.getUsers();
  }

  @override
  Future<UserModel?> getUserById(String userId) async {
    final users = _dataSource.getUsers();
    final matchingUsers = users.where((user) => user.id == userId).toList();
    return matchingUsers.isNotEmpty ? matchingUsers.first : null;
  }

  @override
  Future<List<ChatModel>> getChats(String userId) async {
    return _dataSource.getChats(userId);
  }

  @override
  Future<List<MessageModel>> getMessages(String chatId) async {
    return _dataSource.getMessages(chatId);
  }

  @override
  Future<List<GroupModel>> getGroups(String userId) async {
    return _dataSource.getGroups(userId);
  }

  @override
  Future<void> sendMessage(String chatId, MessageModel message) async {
    return _dataSource.sendMessage(chatId, message);
  }

  @override
  Future<void> createGroup(GroupModel group) async {
    return _dataSource.createGroup(group);
  }
}
