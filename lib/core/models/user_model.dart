class UserModel {
  String fullname;
  String email;
  String password;
  String phone;
  String latitude;
  String longitude;

  UserModel({
    this.email,
    this.password,
    this.fullname,
    this.phone,
    this.latitude,
    this.longitude,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    fullname = json['fullname'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    latitude = json['lat'];
    longitude = json['lng'];
  }



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['lat'] = this.latitude;
    data['lng'] = this.longitude;
    return data;
  }
}







