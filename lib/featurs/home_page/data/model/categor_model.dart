class CategorModel {
 late final int id;
 late final String title;
 late final String description;
 late final String image;
 late final int status;
 late final String createdAt;
 late final String updatedAt;

  CategorModel(
      this.id,
      this.title,
      this.description,
      this.image,
      this.status,
      this.createdAt,
      this.updatedAt);

  CategorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['image'] = image;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
