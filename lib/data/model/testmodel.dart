class TestModel {
  String? usersId;
  String? usersName;
  String? usersPassword;
  String? usersEmail;
  String? usersPhone;
  String? usersVerfiycode;
  String? usersApprove;
  String? usersCreate;

  TestModel(
      {this.usersId,
      this.usersName,
      this.usersPassword,
      this.usersEmail,
      this.usersPhone,
      this.usersVerfiycode,
      this.usersApprove,
      this.usersCreate});

  TestModel.fromJson(Map<String, dynamic> json) {
    usersId = json['users_id'].toString();
    usersName = json['users_name']?.toString();
    usersPassword = json['users_password'].toString();
    usersEmail = json['users_email']?.toString();
    usersPhone = json['users_phone'].toString();
    usersVerfiycode = json['users_verfiycode'].toString();
    usersApprove = json['users_approve']?.toString();
    usersCreate = json['users_create']?.toString();
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['users_id'] = this.usersId;
  //   data['users_name'] = this.usersName;
  //   data['users_password'] = this.usersPassword;
  //   data['users_email'] = this.usersEmail;
  //   data['users_phone'] = this.usersPhone;
  //   data['users_verfiycode'] = this.usersVerfiycode;
  //   data['users_approve'] = this.usersApprove;
  //   data['users_create'] = this.usersCreate;
  //   return data;
  // }
}
