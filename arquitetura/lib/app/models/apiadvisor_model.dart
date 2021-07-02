class ApiadvisorModel {
  late String country;
  late String date;
  late String text;

  ApiadvisorModel(
      {required this.country, required this.date, required this.text});

  ApiadvisorModel.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    date = json['date'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['date'] = this.date;
    data['text'] = this.text;
    return data;
  }
}
