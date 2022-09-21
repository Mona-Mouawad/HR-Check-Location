
class LeLocation {
  List<LeLocation_Model> items=[];

  LeLocation.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      json['items'].forEach((v) {
        items.add(LeLocation_Model.fromJson(v));
      });
    }
  }
}

class LeLocation_Model {
  int ? LeLocationId;
  int ? Lx;
  String ? LocName;
  int ? Ly;
  dynamic ? Radius;
  int ? LeId;

  LeLocation_Model({this.LeLocationId,this.LocName,
    this.Ly,this.Radius,this.LeId});

  LeLocation_Model.fromJson(Map<String, dynamic> json) {
    LeLocationId = json['LeLocationId'];
    Lx = json['Lx'];
    LocName = json['LocName'];
    Ly = json['Ly'];
    Radius = json['Radius'];
   LeId = json['LeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Lx'] = this.Lx;
    data['LeLocationId'] = this.LeLocationId;
    data['LocName'] = this.LocName;
    data['Ly'] = this.Ly;
    data['Radius'] = this.Radius;
    data['LeId'] = this.LeId;
    return data;
  }

}



