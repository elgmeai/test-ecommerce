class ProductModel {
 late final int id;
 late final String title;
 late final String description;
 late final String information;
 late final String shippingReturn;
 late final String price;
 late final String discount;
 late final String discountPrice;
 late final int quantity;
 late final String sold;
 late final int featuredProduct;
 late final int bestSelling;
 late final int newArrival;
 late final int onSale;
 late final int status;
 late final String createdAt;
 late final String updatedAt;
 late final List<Categories> categories;
 late final List<Colors> colors;
late final  List<Sizes> sizes;
 late final List<Productimage> productimage;

  ProductModel(
      this.id,
      this.title,
      this.description,
      this.information,
      this.shippingReturn,
      this.price,
      this.discount,
      this.discountPrice,
      this.quantity,
      this.sold,
      this.featuredProduct,
      this.bestSelling,
      this.newArrival,
      this.onSale,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.categories,
      this.colors,
      this.sizes,
      this.productimage);

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    information = json['information'];
    shippingReturn = json['shipping_return'];
    price = json['price'];
    discount = json['discount'];
    discountPrice = json['discount_Price'];
    quantity = json['quantity'];
    sold = json['sold'];
    featuredProduct = json['featured_Product'];
    bestSelling = json['best_Selling'];
    newArrival = json['new_Arrival'];
    onSale = json['on_Sale'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories.add(Categories.fromJson(v));
      });
    }
    if (json['colors'] != null) {
      colors = <Colors>[];
      json['colors'].forEach((v) {
        colors.add(Colors.fromJson(v));
      });
    }
    if (json['sizes'] != null) {
      sizes = <Sizes>[];
      json['sizes'].forEach((v) {
        sizes.add(Sizes.fromJson(v));
      });
    }
    if (json['productimage'] != null) {
      productimage = <Productimage>[];
      json['productimage'].forEach((v) {
        productimage.add(Productimage.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['information'] = information;
    data['shipping_return'] = shippingReturn;
    data['price'] = price;
    data['discount'] = discount;
    data['discount_Price'] = discountPrice;
    data['quantity'] = quantity;
    data['sold'] = sold;
    data['featured_Product'] = featuredProduct;
    data['best_Selling'] = bestSelling;
    data['new_Arrival'] = newArrival;
    data['on_Sale'] = onSale;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['categories'] = categories.map((v) => v.toJson()).toList();
      data['colors'] = colors.map((v) => v.toJson()).toList();
      data['sizes'] = sizes.map((v) => v.toJson()).toList();
      data['productimage'] = productimage.map((v) => v.toJson()).toList();
      return data;
  }
}

class Categories {
  int? id;
  String? title;
  String? description;
  String? image;
  int? status;
  String? createdAt;
  String? updatedAt;

  Categories(
      {this.id,
      this.title,
      this.description,
      this.image,
      this.status,
      this.createdAt,
      this.updatedAt});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
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

class Colors {
  int? id;
  String? name;
  String? code;
  String? createdAt;
  String? updatedAt;

  Colors({this.id, this.name, this.code, this.createdAt, this.updatedAt});

  Colors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['code'] = code;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Sizes {
  int? id;
  String? size;
  String? createdAt;
  String? updatedAt;

  Sizes({this.id, this.size, this.createdAt, this.updatedAt});

  Sizes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    size = json['Size'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['Size'] = size;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Productimage {
late final  int id;
 late final int productId;
late final  String link;
late final  String createdAt;
late final  String updatedAt;

  Productimage(
      this.id, this.productId, this.link, this.createdAt, this.updatedAt);

  Productimage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    link = json['link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['product_id'] = productId;
    data['link'] = link;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
