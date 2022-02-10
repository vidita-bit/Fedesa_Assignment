class Event {
  int? eventId;
  int? creator;
  int? type;
  double? price;
  int? currencyType;
  String? location;
  String? file;
  String? title;
  String? description;
  String? startAt;
  String? endAt;

  Event({
    this.eventId,
    this.creator,
    this.type,
    this.price,
    this.currencyType,
    this.location,
    this.file,
    this.title,
    this.description,
    this.startAt,
    this.endAt,
  });

  Map toMap(Event events) {
    var mapData = <String, dynamic>{};
    mapData['id'] = events.eventId;
    mapData['creator'] = events.creator;
    mapData['type'] = events.type;
    mapData['price'] = events.price;
    mapData['currency_type'] = events.currencyType;
    mapData['location'] = events.location;
    mapData['file'] = events.file;
    mapData['title'] = events.title;
    mapData['description'] = events.description;
    mapData['start_at'] = events.startAt;
    mapData['end_at'] = events.endAt;
    return mapData;
  }
}
