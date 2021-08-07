class DashBoardNotificationModel {
  final String heading;
  final String content;
  final String date;
  final buttonText;
   bool newMessage;

  DashBoardNotificationModel({
    this.heading,
    this.content,
    this.date,
    this.buttonText,
    this.newMessage,
  });

  bool get markAllAsRead => newMessage = false;
}

List<DashBoardNotificationModel> notification = <DashBoardNotificationModel>[
  DashBoardNotificationModel(
      buttonText: 'VIEW CLAIM',
      heading: 'Your Claim has been approved',
      content:
          'Notification body Pellentesque lobortis quam eget faucibus ultrices molestie',
      newMessage: true),
  DashBoardNotificationModel(
      buttonText: 'VIEW MESSAGE',
      heading: 'You have new message',
      content:
          'Notification body Pellentesque lobortis quam eget faucibus ultrices molestie',
      newMessage: false),
  DashBoardNotificationModel(
      buttonText: 'VIEW DETAILS',
      heading: 'Your Claim has been approved',
      content:
          'Notification body Pellentesque lobortis quam eget faucibus ultrices molestie',
      newMessage: true),
  DashBoardNotificationModel(
      buttonText: 'VIEW CLAIM',
      heading: 'Your Claim has been approved',
      content:
          'Notification body Pellentesque lobortis quam eget faucibus ultrices molestie',
      newMessage: false),
];
