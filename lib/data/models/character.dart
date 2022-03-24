class Character {
    List<int>? appearance;
    List<int>? better_call_saul_appearance;
    String? category;
    String? birthday;
    int? char_id;
    String? img;
    String? name;
    String? nickname;
    List<String>? occupation;
    String? portrayed;
    String? status;

    Character({this.appearance, this.better_call_saul_appearance, this.birthday, this.category, this.char_id, this.img, this.name, this.nickname, this.occupation, this.portrayed, this.status});

    factory Character.fromJson(Map<String, dynamic> json) {
        return Character(
            appearance: json['appearance'] != null ? new List<int>.from(json['appearance']) : null,
            better_call_saul_appearance: json['better_call_saul_appearance'] != null ? new List<int>.from(json['better_call_saul_appearance']) : null,
            birthday: json['birthday'],
            category: json['category'],
            char_id: json['char_id'],
            img: json['img'],
            name: json['name'],
            nickname: json['nickname'],
            occupation: json['occupation'] != null ? new List<String>.from(json['occupation']) : null,
            portrayed: json['portrayed'],
            status: json['status'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['birthday'] = this.birthday;
        data['category'] = this.category;
        data['char_id'] = this.char_id;
        data['img'] = this.img;
        data['name'] = this.name;
        data['nickname'] = this.nickname;
        data['portrayed'] = this.portrayed;
        data['status'] = this.status;
        if (this.appearance != null) {
            data['appearance'] = this.appearance;
        }
        if (this.better_call_saul_appearance != null) {
            data['better_call_saul_appearance'] = this.better_call_saul_appearance;
        }
        if (this.occupation != null) {
            data['occupation'] = this.occupation;
        }
        return data;
    }
}