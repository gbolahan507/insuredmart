// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

LoginModel userModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String userModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    LoginModel({
        this.token,
        this.user,
    });

    String token;
    User user;

    factory LoginModel.fromJson(dynamic json) => LoginModel(
        token: json["token"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "user": user.toJson(),
    };
}

class User {
    User({
        this.authorization,
        this.fullname,
        this.profileUrl,
        this.bio,
        this.userType,
        this.provider,
        this.address,
        this.hasSubscription,
        this.channel,
        this.otp,
        this.isBot,
        this.languageCode,
        this.id,
        this.phone,
        this.email,
        this.password,
        this.data,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.userId,
    });

    Authorization authorization;
    String fullname;
    String profileUrl;
    String bio;
    String userType;
    String provider;
    String address;
    bool hasSubscription;
    String channel;
    dynamic otp;
    String isBot;
    String languageCode;
    String id;
    String phone;
    String email;
    String password;
    String data;
    DateTime createdAt;
    DateTime updatedAt;
    int v;
    String userId;

    factory User.fromJson( dynamic json) => User(
        authorization: Authorization.fromJson(json["authorization"]),
        fullname: json["fullname"],
        profileUrl: json["profile_url"],
        bio: json["bio"],
        userType: json["userType"],
        provider: json["provider"],
        address: json["address"],
        hasSubscription: json["hasSubscription"],
        channel: json["channel"],
        otp: json["otp"],
        isBot: json["is_bot"],
        languageCode: json["language_code"],
        id: json["_id"],
        phone: json["phone"],
        email: json["email"],
        password: json["password"],
        data: json["data"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        userId: json["id"],
    );

    Map<dynamic, dynamic> toJson() => {
        "authorization": authorization.toJson(),
        "fullname": fullname,
        "profile_url": profileUrl,
        "bio": bio,
        "userType": userType,
        "provider": provider,
        "address": address,
        "hasSubscription": hasSubscription,
        "channel": channel,
        "otp": otp,
        "is_bot": isBot,
        "language_code": languageCode,
        "_id": id,
        "phone": phone,
        "email": email,
        "password": password,
        "data": data,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "id": userId,
    };
}

class Authorization {
    Authorization({
        this.isAuthorized,
    });

    bool isAuthorized;

    factory Authorization.fromJson(dynamic json) => Authorization(
        isAuthorized: json["isAuthorized"],
    );

    Map<String, dynamic> toJson() => {
        "isAuthorized": isAuthorized,
    };
}
