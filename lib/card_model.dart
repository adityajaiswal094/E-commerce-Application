class CardModel {
  String image;
  String logoIcon;
  String name;
  String moreChoice;
  String type;
  String priceStart;
  String price;

  CardModel(
      {this.image = "",
      this.logoIcon = "",
      this.name = "",
      this.moreChoice = "",
      this.type = "",
      this.priceStart = "",
      this.price = ""});
}

List<CardModel> mustHave = [
  CardModel(
    image: "assets/image2.png",
    logoIcon: "assets/H&M_icon.png",
    name: "assets/brand_name.png",
    moreChoice: "& more",
    type: "Summer Collection",
    priceStart: "Starting At",
    price: "399",
  ),
  CardModel(
    image: "assets/handbag_image.png",
    logoIcon: "assets/H&M_icon.png",
    name: "assets/brand_name.png",
    moreChoice: "& more",
    type: "Summer Collection",
    priceStart: "Starting At",
    price: "699",
  ),
  CardModel(
    image: "assets/kurti_image.png",
    logoIcon: "assets/H&M_icon.png",
    name: "assets/brand_name.png",
    moreChoice: "& more",
    type: "Summer Collection",
    priceStart: "Starting At",
    price: "499",
  ),
];

// List<CardModel> mensWear = [
//   CardModel(
//     image: "",
//     logoIcon: "",
//     name: "",
//     moreChoice: "",
//     type: "",
//     priceStart: "",
//     price: "",
//   ),
//   CardModel(
//     image: "",
//     logoIcon: "",
//     name: "",
//     moreChoice: "",
//     type: "",
//     priceStart: "",
//     price: "",
//   ),
//   CardModel(
//     image: "",
//     logoIcon: "",
//     name: "",
//     moreChoice: "",
//     type: "",
//     priceStart: "",
//     price: "",
//   ),
// ];

// List<CardModel> bestOfBrands = [
//   CardModel(
//     image: "",
//     logoIcon: "",
//     name: "",
//     moreChoice: "",
//     type: "",
//     priceStart: "",
//     price: "",
//   ),
//   CardModel(
//     image: "",
//     logoIcon: "",
//     name: "",
//     moreChoice: "",
//     type: "",
//     priceStart: "",
//     price: "",
//   ),
//   CardModel(
//     image: "",
//     logoIcon: "",
//     name: "",
//     moreChoice: "",
//     type: "",
//     priceStart: "",
//     price: "",
//   ),
// ];
