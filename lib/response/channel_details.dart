class ChannelDetailsResponse {
  String? liveTvId;
  String? tvName;
  String? isPaid;
  String? description;
  String? slug;
  String? streamFrom;
  String? streamLabel;
  String? streamUrl;
  String? thumbnailUrl;
  String? posterUrl;
  List<String>? allowedPackage;
  List<Null>? additionalMediaSource;
  List<SuggestedTvChannel>? suggestedTvChannel;
  List<AllTvChannel>? allTvChannel;
  String? currentProgramTitle;
  String? currentProgramTime;
  List<Null>? programGuide;

  ChannelDetailsResponse(
      {this.liveTvId,
      this.tvName,
      this.isPaid,
      this.description,
      this.slug,
      this.streamFrom,
      this.streamLabel,
      this.streamUrl,
      this.thumbnailUrl,
      this.posterUrl,
      this.allowedPackage,
      this.additionalMediaSource,
      this.suggestedTvChannel,
      this.allTvChannel,
      this.currentProgramTitle,
      this.currentProgramTime,
      this.programGuide});

  ChannelDetailsResponse.fromJson(Map<String, dynamic> json) {
    liveTvId = json['live_tv_id'];
    tvName = json['tv_name'];
    isPaid = json['is_paid'];
    description = json['description'];
    slug = json['slug'];
    streamFrom = json['stream_from'];
    streamLabel = json['stream_label'];
    streamUrl = json['stream_url'];
    thumbnailUrl = json['thumbnail_url'];
    posterUrl = json['poster_url'];
    //allowedPackage = json['allowed_package'].cast<String>();
    if (json['additional_media_source'] != null) {
      additionalMediaSource = <Null>[];
      json['additional_media_source'].forEach((v) {
        // additionalMediaSource!.add(Null.fromJson(v));
      });
    }
    if (json['suggested_tv_channel'] != null) {
      suggestedTvChannel = <SuggestedTvChannel>[];
      json['suggested_tv_channel'].forEach((v) {
        suggestedTvChannel!.add(new SuggestedTvChannel.fromJson(v));
      });
    }
    if (json['all_tv_channel'] != null) {
      allTvChannel = <AllTvChannel>[];
      json['all_tv_channel'].forEach((v) {
        allTvChannel!.add(new AllTvChannel.fromJson(v));
      });
    }
    currentProgramTitle = json['current_program_title'];
    currentProgramTime = json['current_program_time'];
    if (json['program_guide'] != null) {
      programGuide = <Null>[];
      json['program_guide'].forEach((v) {
        // programGuide!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['live_tv_id'] = this.liveTvId;
    data['tv_name'] = this.tvName;
    data['is_paid'] = this.isPaid;
    data['description'] = this.description;
    data['slug'] = this.slug;
    data['stream_from'] = this.streamFrom;
    data['stream_label'] = this.streamLabel;
    data['stream_url'] = this.streamUrl;
    data['thumbnail_url'] = this.thumbnailUrl;
    data['poster_url'] = this.posterUrl;
    data['allowed_package'] = this.allowedPackage;
    if (this.additionalMediaSource != null) {
      // data['additional_media_source'] =
      //     this.additionalMediaSource!.map((v) => v.toJson()).toList();
    }
    if (this.suggestedTvChannel != null) {
      data['suggested_tv_channel'] =
          this.suggestedTvChannel!.map((v) => v.toJson()).toList();
    }
    if (this.allTvChannel != null) {
      data['all_tv_channel'] =
          this.allTvChannel!.map((v) => v.toJson()).toList();
    }
    data['current_program_title'] = this.currentProgramTitle;
    data['current_program_time'] = this.currentProgramTime;
    if (this.programGuide != null) {
      // data['program_guide'] =
      //     this.programGuide!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SuggestedTvChannel {
  String? liveTvId;
  String? tvName;
  String? isPaid;
  String? description;
  String? slug;
  String? streamFrom;
  String? streamLabel;
  String? streamUrl;
  String? thumbnailUrl;
  String? posterUrl;
  List<String>? allowedPackage;
  List<Null>? additionalMediaSource;
  List<AllTvChannel>? allTvChannel;
  String? currentProgramTitle;
  String? currentProgramTime;
  List<Null>? programGuide;

  SuggestedTvChannel(
      {this.liveTvId,
      this.tvName,
      this.isPaid,
      this.description,
      this.slug,
      this.streamFrom,
      this.streamLabel,
      this.streamUrl,
      this.thumbnailUrl,
      this.posterUrl,
      this.allowedPackage,
      this.additionalMediaSource,
      this.allTvChannel,
      this.currentProgramTitle,
      this.currentProgramTime,
      this.programGuide});

  SuggestedTvChannel.fromJson(Map<String, dynamic> json) {
    liveTvId = json['live_tv_id'];
    tvName = json['tv_name'];
    isPaid = json['is_paid'];
    description = json['description'];
    slug = json['slug'];
    streamFrom = json['stream_from'];
    streamLabel = json['stream_label'];
    streamUrl = json['stream_url'];
    thumbnailUrl = json['thumbnail_url'];
    posterUrl = json['poster_url'];
    allowedPackage = json['allowed_package'].cast<String>();
    if (json['additional_media_source'] != null) {
      additionalMediaSource = <Null>[];
      json['additional_media_source'].forEach((v) {
        // additionalMediaSource!.add(new Null.fromJson(v));
      });
    }
    if (json['all_tv_channel'] != null) {
      allTvChannel = <AllTvChannel>[];
      json['all_tv_channel'].forEach((v) {
        allTvChannel!.add(new AllTvChannel.fromJson(v));
      });
    }
    currentProgramTitle = json['current_program_title'];
    currentProgramTime = json['current_program_time'];
    if (json['program_guide'] != null) {
      programGuide = <Null>[];
      json['program_guide'].forEach((v) {
        // programGuide!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['live_tv_id'] = this.liveTvId;
    data['tv_name'] = this.tvName;
    data['is_paid'] = this.isPaid;
    data['description'] = this.description;
    data['slug'] = this.slug;
    data['stream_from'] = this.streamFrom;
    data['stream_label'] = this.streamLabel;
    data['stream_url'] = this.streamUrl;
    data['thumbnail_url'] = this.thumbnailUrl;
    data['poster_url'] = this.posterUrl;
    data['allowed_package'] = this.allowedPackage;
    if (this.additionalMediaSource != null) {
      // data['additional_media_source'] =
      //     this.additionalMediaSource!.map((v) => v.toJson()).toList();
    }
    if (this.allTvChannel != null) {
      data['all_tv_channel'] =
          this.allTvChannel!.map((v) => v.toJson()).toList();
    }
    data['current_program_title'] = this.currentProgramTitle;
    data['current_program_time'] = this.currentProgramTime;
    if (this.programGuide != null) {
      // data['program_guide'] =
      //     this.programGuide!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllTvChannel {
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

  AllTvChannel(
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

  AllTvChannel.fromJson(Map<String, dynamic> json) {
    liveTvId = json['live_tv_id'];
    tvName = json['tv_name'];
    isPaid = json['is_paid'];
    //allowedPackage = json['allowed_package'].cast<String>();
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
