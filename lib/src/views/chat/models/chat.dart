class ChatModel {
  final String avatar;
  final String name;
  final String lastMessage;
  final String time;
  final int newMessageCount;
  final bool isMuted;

  ChatModel(
    this.avatar,
    this.name,
    this.lastMessage,
    this.time,
    this.newMessageCount,
    this.isMuted,
  );
}
