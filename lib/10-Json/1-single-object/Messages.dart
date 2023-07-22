class Messages {
  int message_code;
  String message_content;

  Messages(this.message_code, this.message_content);

  factory Messages.fromJson(Map<String, dynamic> json) {
    return Messages(
        json["message_code"] as int, json["message_content"] as String);
  }
}
