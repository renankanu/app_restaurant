import 'package:json_annotation/json_annotation.dart';

part 'restaurant_model.g.dart';

@JsonSerializable()
class RestaurantModel {
  Restaurant restaurant;

  RestaurantModel({this.restaurant});

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantModelToJson(this);
}

@JsonSerializable()
class Restaurant {
  R r;
  String apikey;
  String id;
  String name;
  String url;
  Location location;
  int switchToOrderMenu;
  String cuisines;
  String timings;
  int averageCostForTwo;
  int priceRange;
  String currency;
  List<String> highlights;
  List<dynamic> offers;
  int opentableSupport;
  int isZomatoBookRes;
  String mezzoProvider;
  int isBookFormWebView;
  String bookFormWebViewUrl;
  String bookAgainUrl;
  String thumb;
  UserRating userRating;
  int allReviewsCount;
  String photosUrl;
  int photoCount;
  String menuUrl;
  String featuredImage;
  int hasOnlineDelivery;
  int isDeliveringNow;
  String storeType;
  bool includeBogoOffers;
  String deeplink;
  int isTableReservationSupported;
  int hasTableBooking;
  String eventsUrl;
  String phoneNumbers;
  AllReviews allReviews;
  List<String> establishment;
  List<dynamic> establishmentTypes;
  int medioProvider;

  Restaurant(
      {this.r,
      this.apikey,
      this.id,
      this.name,
      this.url,
      this.location,
      this.switchToOrderMenu,
      this.cuisines,
      this.timings,
      this.averageCostForTwo,
      this.priceRange,
      this.currency,
      this.highlights,
      this.offers,
      this.opentableSupport,
      this.isZomatoBookRes,
      this.mezzoProvider,
      this.isBookFormWebView,
      this.bookFormWebViewUrl,
      this.bookAgainUrl,
      this.thumb,
      this.userRating,
      this.allReviewsCount,
      this.photosUrl,
      this.photoCount,
      this.menuUrl,
      this.featuredImage,
      this.hasOnlineDelivery,
      this.isDeliveringNow,
      this.storeType,
      this.includeBogoOffers,
      this.deeplink,
      this.isTableReservationSupported,
      this.hasTableBooking,
      this.eventsUrl,
      this.phoneNumbers,
      this.allReviews,
      this.establishment,
      this.establishmentTypes,
      this.medioProvider});

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
}

@JsonSerializable()
class R {
  int resId;
  bool isGroceryStore;
  HasMenuStatus hasMenuStatus;

  R({this.resId, this.isGroceryStore, this.hasMenuStatus});

  factory R.fromJson(Map<String, dynamic> json) => _$RFromJson(json);
  Map<String, dynamic> toJson() => _$RToJson(this);
}

@JsonSerializable()
class HasMenuStatus {
  int delivery;
  int takeaway;

  HasMenuStatus({this.delivery, this.takeaway});

  factory HasMenuStatus.fromJson(Map<String, dynamic> json) =>
      _$HasMenuStatusFromJson(json);
  Map<String, dynamic> toJson() => _$HasMenuStatusToJson(this);
}

@JsonSerializable()
class Location {
  String address;
  String locality;
  String city;
  int cityId;
  String latitude;
  String longitude;
  String zipcode;
  int countryId;
  String localityVerbose;

  Location(
      {this.address,
      this.locality,
      this.city,
      this.cityId,
      this.latitude,
      this.longitude,
      this.zipcode,
      this.countryId,
      this.localityVerbose});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class UserRating {
  String aggregateRating;
  String ratingText;
  String ratingColor;
  RatingObj ratingObj;
  int votes;
  String customRatingText;
  String customRatingTextBackground;
  String ratingToolTip;

  UserRating(
      {this.aggregateRating,
      this.ratingText,
      this.ratingColor,
      this.ratingObj,
      this.votes,
      this.customRatingText,
      this.customRatingTextBackground,
      this.ratingToolTip});

  factory UserRating.fromJson(Map<String, dynamic> json) =>
      _$UserRatingFromJson(json);
  Map<String, dynamic> toJson() => _$UserRatingToJson(this);
}

@JsonSerializable()
class RatingObj {
  Title title;
  BgColor bgColor;

  RatingObj({this.title, this.bgColor});

  factory RatingObj.fromJson(Map<String, dynamic> json) =>
      _$RatingObjFromJson(json);
  Map<String, dynamic> toJson() => _$RatingObjToJson(this);
}

@JsonSerializable()
class Title {
  String text;

  Title({this.text});

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class BgColor {
  String type;
  String tint;

  BgColor({this.type, this.tint});

  factory BgColor.fromJson(Map<String, dynamic> json) =>
      _$BgColorFromJson(json);
  Map<String, dynamic> toJson() => _$BgColorToJson(this);
}

@JsonSerializable()
class AllReviews {
  List<Reviews> reviews;

  AllReviews({this.reviews});

  factory AllReviews.fromJson(Map<String, dynamic> json) =>
      _$AllReviewsFromJson(json);
  Map<String, dynamic> toJson() => _$AllReviewsToJson(this);
}

@JsonSerializable()
class Reviews {
  List<dynamic> review;

  Reviews({this.review});

  factory Reviews.fromJson(Map<String, dynamic> json) =>
      _$ReviewsFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewsToJson(this);
}
