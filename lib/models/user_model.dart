import 'package:chat_app/constants.dart';

class UserModel {
  String? uid;
  String? phoneNumber;
  String? name;
  String? imageUrl;
  String? token;
  String? aboutMe;
  bool? isOnline;
  String? lastSeen;
  String? createdAt;
  List<String>? friendsUIDs;
  List<String>? friendRequestsUIDs;
  List<String>? sentFriendRequestsUIDs;

  UserModel({
    required this.uid,
    required this.phoneNumber,
    required this.name,
    required this.imageUrl,
    required this.token,
    required this.aboutMe,
    required this.isOnline,
    required this.lastSeen,
    required this.createdAt,
    required this.friendsUIDs,
    required this.friendRequestsUIDs,
    required this.sentFriendRequestsUIDs,
  });
  //from map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map[Constants.uid] ?? '',
      phoneNumber: map[Constants.phoneNumber] ?? '',
      name: map[Constants.name] ?? '',
      imageUrl: map[Constants.imageUrl] ?? '',
      token: map[Constants.token] ?? '',
      aboutMe: map[Constants.aboutMe] ?? '',
      isOnline: map[Constants.isOnline] ?? false,
      lastSeen: map[Constants.lastSeen] ?? '',
      createdAt: map[Constants.createdAt] ?? '',
      friendsUIDs: List<String>.from(map[Constants.friendsUIDs] ?? []),
      friendRequestsUIDs: List<String>.from(map[Constants.friendRequestsUIDs] ?? []),
      sentFriendRequestsUIDs: List<String>.from(map[Constants.sentFriendRequestsUIDs] ?? []),
    );
  }
  //to map
  Map<String, dynamic> toMap() {
    return {
      Constants.uid: uid,
      Constants.phoneNumber: phoneNumber,
      Constants.name: name,
      Constants.imageUrl: imageUrl,
      Constants.token: token,
      Constants.aboutMe: aboutMe,
      Constants.isOnline: isOnline,
      Constants.lastSeen: lastSeen,
      Constants.createdAt: createdAt,
      Constants.friendsUIDs: friendsUIDs,
      Constants.friendRequestsUIDs: friendRequestsUIDs,
      Constants.sentFriendRequestsUIDs: sentFriendRequestsUIDs,
    };
  }

}
