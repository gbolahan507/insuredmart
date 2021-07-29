// To parse this JSON data, do
//
//     final signupModel = signupModelFromJson(jsonString);

import 'dart:convert';

SignupModel signupModelFromJson(String str) => SignupModel.fromJson(json.decode(str));

String signupModelToJson(SignupModel data) => json.encode(data.toJson());

class SignupModel {
    SignupModel({
        this.message,
        this.data,
    });

    String message;
    Data data;

    factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    Data({
        this.token,
        this.user,
    });

    String token;
    User user;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
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
        this.idCard,
        this.utilityBill,
        this.hasSubscription,
        this.channel,
        this.otp,
        this.isBot,
        this.languageCode,
        this.id,
        this.phone,
        this.email,
        this.password,
        this.userId,
    });

    Authorization authorization;
    String fullname;
    String profileUrl;
    String bio;
    String userType;
    String provider;
    String address;
    String idCard;
    String utilityBill;
    bool hasSubscription;
    String channel;
    dynamic otp;
    String isBot;
    String languageCode;
    String id;
    String phone;
    String email;
    String password;
    String userId;

    factory User.fromJson(Map<String, dynamic> json) => User(
        authorization: Authorization.fromJson(json["authorization"]),
        fullname: json["fullname"],
        profileUrl: json["profile_url"],
        bio: json["bio"],
        userType: json["userType"],
        provider: json["provider"],
        address: json["address"],
        idCard: json["idCard"],
        utilityBill: json["utilityBill"],
        hasSubscription: json["hasSubscription"],
        channel: json["channel"],
        otp: json["otp"],
        isBot: json["is_bot"],
        languageCode: json["language_code"],
        id: json["_id"],
        phone: json["phone"],
        email: json["email"],
        password: json["password"],
        userId: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "authorization": authorization.toJson(),
        "fullname": fullname,
        "profile_url": profileUrl,
        "bio": bio,
        "userType": userType,
        "provider": provider,
        "address": address,
        "idCard": idCard,
        "utilityBill": utilityBill,
        "hasSubscription": hasSubscription,
        "channel": channel,
        "otp": otp,
        "is_bot": isBot,
        "language_code": languageCode,
        "_id": id,
        "phone": phone,
        "email": email,
        "password": password,
        "id": userId,
    };
}

class Authorization {
    Authorization({
        this.isAuthorized,
    });

    bool isAuthorized;

    factory Authorization.fromJson(Map<String, dynamic> json) => Authorization(
        isAuthorized: json["isAuthorized"],
    );

    Map<String, dynamic> toJson() => {
        "isAuthorized": isAuthorized,
    };
}
