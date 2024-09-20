// counties.dart

class County {
  final String code;
  late final String name;

  County({required this.code, required this.name});
}

List<County> counties = [
  County(code: "001", name: "Mombasa"),
  County(code: "002", name: "Kwale"),
  County(code: "003", name: "Kilifi"),
  County(code: "004", name: "Tana River"),
  County(code: "005", name: "Lamu"),
  County(code: "006", name: "Taita-Taveta"),
  County(code: "007", name: "Garissa"),
  County(code: "008", name: "Wajir"),
  County(code: "009", name: "Mandera"),
  County(code: "010", name: "Marsabit"),
  County(code: "011", name: "Isiolo"),
  County(code: "012", name: "Meru"),
  County(code: "013", name: "Tharaka-Nithi"),
  County(code: "014", name: "Embu"),
  County(code: "015", name: "Kitui"),
  County(code: "016", name: "Machakos"),
  County(code: "017", name: "Makueni"),
  County(code: "018", name: "Nyandarua"),
  County(code: "019", name: "Nyeri"),
  County(code: "020", name: "Kirinyaga"),
  County(code: "021", name: "Murang'a"),
  County(code: "022", name: "Kiambu"),
  County(code: "023", name: "Turkana"),
  County(code: "024", name: "West Pokot"),
  County(code: "025", name: "Samburu"),
  County(code: "026", name: "Trans Nzoia"),
  County(code: "027", name: "Uasin Gishu"),
  County(code: "028", name: "Elgeyo-Marakwet"),
  County(code: "029", name: "Nandi"),
  County(code: "030", name: "Baringo"),
  County(code: "031", name: "Laikipia"),
  County(code: "032", name: "Nakuru"),
  County(code: "033", name: "Narok"),
  County(code: "034", name: "Kajiado"),
  County(code: "035", name: "Kericho"),
  County(code: "036", name: "Bomet"),
  County(code: "037", name: "Kakamega"),
  County(code: "038", name: "Vihiga"),
  County(code: "039", name: "Bungoma"),
  County(code: "040", name: "Busia"),
  County(code: "041", name: "Siaya"),
  County(code: "042", name: "Kisumu"),
  County(code: "043", name: "Homa Bay"),
  County(code: "044", name: "Migori"),
  County(code: "045", name: "Kisii"),
  County(code: "046", name: "Nyamira"),
  County(code: "047", name: "Nairobi City"),
].toList()
..sort((a, b) => a.name.compareTo(b.name));
