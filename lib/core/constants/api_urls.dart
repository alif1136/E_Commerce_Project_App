class ApiUrls {

  static const String base = "https://craftybay.teamrabbil.com/api";

  static const String categoryList = "$base/CategoryList";
  static const String sliderList = "$base/ListProductSlider";

  static String productByCategory(id) =>
      "$base/ListProductByCategory/$id";

  static String productDetails(id) =>
      "$base/ProductDetailsById/$id";

  static String reviews(id) =>
      "$base/ListReviewByProduct/$id";

  static const String login = "$base/UserLogin";
  static const String verify = "$base/VerifyLogin";
}