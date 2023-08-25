class DataModel {
  bool? status;
  List<Linkdata>? linkdata;
  List<Girldata>? girldata;

  DataModel({this.status, this.linkdata, this.girldata});

  DataModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['linkdata'] != null) {
      linkdata = <Linkdata>[];
      json['linkdata'].forEach((v) {
        linkdata!.add(Linkdata.fromJson(v));
      });
    }
    if (json['girldata'] != null) {
      girldata = <Girldata>[];
      json['girldata'].forEach((v) {
        girldata!.add(Girldata.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (linkdata != null) {
      data['linkdata'] = linkdata!.map((v) => v.toJson()).toList();
    }
    if (girldata != null) {
      data['girldata'] = girldata!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Linkdata {
  int? id;
  String? reason;
  String? link;
  String? createdAt;
  String? updatedAt;

  Linkdata({this.id, this.reason, this.link, this.createdAt, this.updatedAt});

  Linkdata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reason = json['reason'];
    link = json['link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['reason'] = reason;
    data['link'] = link;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Girldata {
  int? id;
  String? imageLink;
  String? createdAt;
  String? updatedAt;

  Girldata({this.id, this.imageLink, this.createdAt, this.updatedAt});

  Girldata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageLink = json['image_link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image_link'] = imageLink;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}