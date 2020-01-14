class UserModel {
  String login;
  int id;
  String avatarUrl;
  String htmlUrl;
  String name;
  String company;
  String location;
  String bio;
  int publicRepos;
  int followers;
  int following;
  String createdAt;
  String updatedAt;

  UserModel({
    this.login,
    this.id,
    this.avatarUrl,
    this.htmlUrl,
    this.name,
    this.company,
    this.location,
    this.bio,
    this.publicRepos,
    this.followers,
    this.following,
    this.createdAt,
    this.updatedAt,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    avatarUrl = json['avatar_url'];
    htmlUrl = json['html_url'];
    name = json['name'];
    company = json['company'];
    location = json['location'];
    bio = json['bio'];
    publicRepos = json['public_repos'];
    followers = json['followers'];
    following = json['following'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['id'] = this.id;
    data['avatar_url'] = this.avatarUrl;
    data['html_url'] = this.htmlUrl;
    data['name'] = this.name;
    data['company'] = this.company;
    data['location'] = this.location;
    data['bio'] = this.bio;
    data['public_repos'] = this.publicRepos;
    data['followers'] = this.followers;
    data['following'] = this.following;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
