class AllLaunchPadsModel {
  Images? images;
  String? name;
  String? fullName;
  String? status;
  String? type;
  String? locality;
  String? region;
  double? latitude;
  double? longitude;
  int? landingAttempts;
  int? landingSuccesses;
  String? wikipedia;
  String? details;
  List<String>? launches;
  String? id;

  AllLaunchPadsModel(
      {this.images,
      this.name,
      this.fullName,
      this.status,
      this.type,
      this.locality,
      this.region,
      this.latitude,
      this.longitude,
      this.landingAttempts,
      this.landingSuccesses,
      this.wikipedia,
      this.details,
      this.launches,
      this.id});

  AllLaunchPadsModel.fromJson(Map<String, dynamic> json) {
    images =
        json['images'] != null ? new Images.fromJson(json['images']) : null;
    name = json['name'];
    fullName = json['full_name'];
    status = json['status'];
    type = json['type'];
    locality = json['locality'];
    region = json['region'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    landingAttempts = json['landing_attempts'];
    landingSuccesses = json['landing_successes'];
    wikipedia = json['wikipedia'];
    details = json['details'];
    launches = json['launches'].cast<String>();
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    data['name'] = this.name;
    data['full_name'] = this.fullName;
    data['status'] = this.status;
    data['type'] = this.type;
    data['locality'] = this.locality;
    data['region'] = this.region;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['landing_attempts'] = this.landingAttempts;
    data['landing_successes'] = this.landingSuccesses;
    data['wikipedia'] = this.wikipedia;
    data['details'] = this.details;
    data['launches'] = this.launches;
    data['id'] = this.id;
    return data;
  }
}

class Images {
  List<String>? large;

  Images({this.large});

  Images.fromJson(Map<String, dynamic> json) {
    large = json['large'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['large'] = this.large;
    return data;
  }
}
