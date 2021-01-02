class MessagesList {
  final String name;
  final String description;
  final String message;
  String sendTime;
  bool isStarred;
  bool isRead;

  static countIsNotRead() {
    int k = 0;

    for (int i = 0; i < messageList.length; i++) {
      if (messageList[i].isRead == false) {
        k += 1;
      }
    }
    return k;
  }

  MessagesList(
      {this.name,
      this.description,
      this.message,
      this.sendTime,
      this.isStarred,
      this.isRead});
}

List<MessagesList> messageList = [
  MessagesList(
      name: "Cecilia, Nik",
      description: "Trip to Yosemite",
      message:
          "Check out the planninck out the planninck out the planninck out the planninck out the planning doc",
      sendTime: '${DateTime.now().hour}:${DateTime.now().minute}',
      isStarred: false,
      isRead: true),
  MessagesList(
      name: "Jenna, Alan, me",
      description: "Hello from Mexico",
      message:
          "Check out this place that we're Check out this place that we'reCheck out this place that we're",
      sendTime: '${DateTime.now().hour}:${DateTime.now().minute}',
      isStarred: false,
      isRead: false),
  MessagesList(
      name: "Jeroen, Tino",
      description: "Coffee-making class",
      message:
          "Hi, I made a reservatiHi, I made a reservatiHi, I made a reservatiHi, I made a reservati",
      sendTime: '${DateTime.now().hour}:${DateTime.now().minute}',
      isStarred: true,
      isRead: false),
  MessagesList(
      name: "Google",
      description: "Security alert",
      message:
          "New device signed in to New device signed in to New device signed in to New device signed in to  ",
      sendTime: '${DateTime.now().hour}:${DateTime.now().minute}',
      isStarred: true,
      isRead: false),
  MessagesList(
      name: "The Google Drive Team",
      description: "The Google Drive Team",
      message:
          "The Google Drive Team New device signed in to New device signed in to New device signed in to New device signed in to ",
      sendTime: '${DateTime.now().hour}:${DateTime.now().minute}',
      isStarred: false,
      isRead: true),
  MessagesList(
      name: "Viber",
      description: "Viber Viber Viber",
      message:
          "ViberViberViberViberVberVibeberVibeberVibeberVibeberVibeberVibeberVibeberVibeiber",
      sendTime: '${DateTime.now().hour}:${DateTime.now().minute}',
      isStarred: false,
      isRead: true),
  MessagesList(
      name: "Pinterest",
      description: "Bedroom false ceiling design",
      message: "PinterestPinterestPinterestPinteresPinteresPinteresPinteres",
      sendTime: '${DateTime.now().hour}:${DateTime.now().minute}',
      isStarred: true,
      isRead: true),
];
