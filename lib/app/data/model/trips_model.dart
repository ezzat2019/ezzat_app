class TripsModel {
  TripsModel({this.trips});

  TripsModel.fromJson(dynamic json) {
    if (json['trips'] != null) {
      trips = [];
      json['trips'].forEach((v) {
        trips?.add(Trips.fromJson(v));
      });
    }
  }
  List<Trips>? trips;
  TripsModel copyWith({List<Trips>? trips}) =>
      TripsModel(trips: trips ?? this.trips);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (trips != null) {
      map['trips'] = trips?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Trips {
  Trips({
    this.id,
    this.status,
    this.title,
    this.dates,
    this.participants,
    this.unfinishedTasks,
    this.coverImage,
  });

  Trips.fromJson(dynamic json) {
    id = json['id'];
    status = json['status'];
    title = json['title'];
    dates = json['dates'] != null ? Dates.fromJson(json['dates']) : null;
    if (json['participants'] != null) {
      participants = [];
      json['participants'].forEach((v) {
        participants?.add(Participants.fromJson(v));
      });
    }
    unfinishedTasks = json['unfinished_tasks'];
    coverImage = json['cover_image'];
  }
  String? id;
  String? status;
  String? title;
  Dates? dates;
  List<Participants>? participants;
  num? unfinishedTasks;
  String? coverImage;
  Trips copyWith({
    String? id,
    String? status,
    String? title,
    Dates? dates,
    List<Participants>? participants,
    num? unfinishedTasks,
    String? coverImage,
  }) => Trips(
    id: id ?? this.id,
    status: status ?? this.status,
    title: title ?? this.title,
    dates: dates ?? this.dates,
    participants: participants ?? this.participants,
    unfinishedTasks: unfinishedTasks ?? this.unfinishedTasks,
    coverImage: coverImage ?? this.coverImage,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['status'] = status;
    map['title'] = title;
    if (dates != null) {
      map['dates'] = dates?.toJson();
    }
    if (participants != null) {
      map['participants'] = participants?.map((v) => v.toJson()).toList();
    }
    map['unfinished_tasks'] = unfinishedTasks;
    map['cover_image'] = coverImage;
    return map;
  }
}

class Participants {
  Participants({this.name, this.avatarUrl});

  Participants.fromJson(dynamic json) {
    name = json['name'];
    avatarUrl = json['avatar_url'];
  }
  String? name;
  String? avatarUrl;
  Participants copyWith({String? name, String? avatarUrl}) => Participants(
    name: name ?? this.name,
    avatarUrl: avatarUrl ?? this.avatarUrl,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['avatar_url'] = avatarUrl;
    return map;
  }
}

class Dates {
  Dates({this.start, this.end});

  Dates.fromJson(dynamic json) {
    start = json['start'];
    end = json['end'];
  }
  String? start;
  String? end;
  Dates copyWith({String? start, String? end}) =>
      Dates(start: start ?? this.start, end: end ?? this.end);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['start'] = start;
    map['end'] = end;
    return map;
  }
}
