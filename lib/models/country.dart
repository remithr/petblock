class Country {
  String country;
  String countryCode;
  String capital;

  Country({
    this.country,
    this.countryCode,
    this.capital,
  });

  Country.fromJson(Map<String, dynamic> json) {
    country = json['name'];
    countryCode = json['alpha2Code'];
    capital = json['capital'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.country;
    data['alpha2Code'] = this.countryCode;
    data['capital'] = this.capital;
    return data;
  }
}
