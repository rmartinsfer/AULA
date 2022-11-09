class ChannelResponse {
  String? liveTvCategoryId;
  String? title;
  String? description;
  List<Channels>? channels;

  ChannelResponse(
      {this.liveTvCategoryId, this.title, this.description, this.channels});

  ChannelResponse.fromJson(Map<String, dynamic> json) {
    liveTvCategoryId = json['live_tv_category_id'];
    title = json['title'];
    description = json['description'];
    if (json['channels'] != null) {
      channels = <Channels>[];
      json['channels'].forEach((v) {
        channels!.add(new Channels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['live_tv_category_id'] = this.liveTvCategoryId;
    data['title'] = this.title;
    data['description'] = this.description;
    if (this.channels != null) {
      data['channels'] = this.channels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Channels {
  String? liveTvId;
  String? tvName;
  String? isPaid;
  List<String>? allowedPackage;
  String? description;
  String? slug;
  String? streamFrom;
  String? streamLabel;
  String? streamUrl;
  String? thumbnailUrl;
  String? posterUrl;

  Channels(
      {this.liveTvId,
      this.tvName,
      this.isPaid,
      this.allowedPackage,
      this.description,
      this.slug,
      this.streamFrom,
      this.streamLabel,
      this.streamUrl,
      this.thumbnailUrl,
      this.posterUrl});

  Channels.fromJson(Map<String, dynamic> json) {
    liveTvId = json['live_tv_id'];
    tvName = json['tv_name'];
    isPaid = json['is_paid'];
    allowedPackage = json['allowed_package'].cast<String>();
    description = json['description'];
    slug = json['slug'];
    streamFrom = json['stream_from'];
    streamLabel = json['stream_label'];
    streamUrl = json['stream_url'];
    thumbnailUrl = json['thumbnail_url'];
    posterUrl = json['poster_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['live_tv_id'] = this.liveTvId;
    data['tv_name'] = this.tvName;
    data['is_paid'] = this.isPaid;
    data['allowed_package'] = this.allowedPackage;
    data['description'] = this.description;
    data['slug'] = this.slug;
    data['stream_from'] = this.streamFrom;
    data['stream_label'] = this.streamLabel;
    data['stream_url'] = this.streamUrl;
    data['thumbnail_url'] = this.thumbnailUrl;
    data['poster_url'] = this.posterUrl;
    return data;
  }
}
