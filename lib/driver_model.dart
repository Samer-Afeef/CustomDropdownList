

class DriverModel {
  int? id;
  String? name;
  String? email;
  String? emailVerifiedAt;
  bool? isActive;
  int? isDeleted;
  String? phone;
  int? shopId;
  String? createdAt;
  String? updatedAt;


  DriverModel(
      {this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.isActive,
        this.isDeleted,
        this.phone,
        this.shopId,
        this.createdAt,
        this.updatedAt,
    });

  DriverModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    isActive = json['is_active'];
    isDeleted = json['is_deleted'];
    phone = json['phone'];
    shopId = json['shop_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['is_active'] = isActive;
    data['is_deleted'] = isDeleted;
    data['phone'] = phone;
    data['shop_id'] = shopId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;

    return data;
  }
}


