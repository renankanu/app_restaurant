import 'package:json_annotation/json_annotation.dart';

part "restaurant_model.g.dart";

@JsonSerializable()
class RestaurantModel {
  String id;
  String name;
  String url;
  Location location;
  String averageCostForTwo;
  String priceRange;
  String currency;
  String thumb;
  String featuredImage;
  String photosUrl;
  String menuUrl;
  String eventsUrl;
  UserRating userRating;
  String hasOnlineDelivery;
  String isDeliveringNow;
  String hasTableBooking;
  String deeplink;
  String cuisines;
  String allReviewsCount;
  String photoCount;
  String phoneNumbers;
  List<Photos> photos;
  List<AllReviews> allReviews;

  RestaurantModel({
    this.id,
    this.name,
    this.url,
    this.location,
    this.averageCostForTwo,
    this.priceRange,
    this.currency,
    this.thumb,
    this.featuredImage,
    this.photosUrl,
    this.menuUrl,
    this.eventsUrl,
    this.userRating,
    this.hasOnlineDelivery,
    this.isDeliveringNow,
    this.hasTableBooking,
    this.deeplink,
    this.cuisines,
    this.allReviewsCount,
    this.photoCount,
    this.phoneNumbers,
    this.photos,
    this.allReviews,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
  Map<String, dynamic> toJson() => _$RestaurantModelToJson(this);
}

@JsonSerializable()
class Location {
  String address;
  String locality;
  String city;
  String latitude;
  String longitude;
  String zipcode;
  String countryId;

  Location(
      {this.address,
      this.locality,
      this.city,
      this.latitude,
      this.longitude,
      this.zipcode,
      this.countryId});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class UserRating {
  String aggregateRating;
  String ratingText;
  String ratingColor;
  String votes;

  UserRating(
      {this.aggregateRating, this.ratingText, this.ratingColor, this.votes});

  factory UserRating.fromJson(Map<String, dynamic> json) =>
      _$UserRatingFromJson(json);
  Map<String, dynamic> toJson() => _$UserRatingToJson(this);
}

@JsonSerializable()
class Photos {
  String id;
  String url;
  String thumbUrl;
  User user;
  String resId;
  String caption;
  String timestamp;
  String friendlyTime;
  String width;
  String height;
  String commentsCount;
  String likesCount;

  Photos(
      {this.id,
      this.url,
      this.thumbUrl,
      this.user,
      this.resId,
      this.caption,
      this.timestamp,
      this.friendlyTime,
      this.width,
      this.height,
      this.commentsCount,
      this.likesCount});

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
  Map<String, dynamic> toJson() => _$PhotosToJson(this);
}

@JsonSerializable()
class User {
  String name;
  String zomatoHandle;
  String foodieLevel;
  String foodieLevelNum;
  String foodieColor;
  String profileUrl;
  String profileDeeplink;
  String profileImage;

  User(
      {this.name,
      this.zomatoHandle,
      this.foodieLevel,
      this.foodieLevelNum,
      this.foodieColor,
      this.profileUrl,
      this.profileDeeplink,
      this.profileImage});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class AllReviews {
  String rating;
  String reviewText;
  String id;
  String ratingColor;
  String reviewTimeFriendly;
  String ratingText;
  String timestamp;
  String likes;
  User user;
  String commentsCount;

  AllReviews(
      {this.rating,
      this.reviewText,
      this.id,
      this.ratingColor,
      this.reviewTimeFriendly,
      this.ratingText,
      this.timestamp,
      this.likes,
      this.user,
      this.commentsCount});

  factory AllReviews.fromJson(Map<String, dynamic> json) =>
      _$AllReviewsFromJson(json);
  Map<String, dynamic> toJson() => _$AllReviewsToJson(this);
}
