class Task {
  final int id;
  final String title;
  final String description;
  int benefactor = null;
  final int charity;
  Task({this.id, this.title, this.description, this.benefactor, this.charity});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        benefactor: json['benefactor'],
        charity: json['charity']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['benefactor'] = this.benefactor;
    data['charity'] = this.charity;
    return data;
  }
}
