// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) {
  return RestaurantModel(
    id: json['id'] as String,
    name: json['name'] as String,
    url: json['url'] as String,
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    averageCostForTwo: json['averageCostForTwo'] as String,
    priceRange: json['priceRange'] as String,
    currency: json['currency'] as String,
    thumb: json['thumb'] as String,
    featuredImage: json['featuredImage'] as String,
    photosUrl: json['photosUrl'] as String,
    menuUrl: json['menuUrl'] as String,
    eventsUrl: json['eventsUrl'] as String,
    userRating: json['userRating'] == null
        ? null
        : UserRating.fromJson(json['userRating'] as Map<String, dynamic>),
    hasOnlineDelivery: json['hasOnlineDelivery'] as String,
    isDeliveringNow: json['isDeliveringNow'] as String,
    hasTableBooking: json['hasTableBooking'] as String,
    deeplink: json['deeplink'] as String,
    cuisines: json['cuisines'] as String,
    allReviewsCount: json['allReviewsCount'] as String,
    photoCount: json['photoCount'] as String,
    phoneNumbers: json['phoneNumbers'] as String,
    photos: (json['photos'] as List)
        ?.map((e) =>
            e == null ? null : Photos.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allReviews: (json['allReviews'] as List)
        ?.map((e) =>
            e == null ? null : AllReviews.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RestaurantModelToJson(RestaurantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'location': instance.location,
      'averageCostForTwo': instance.averageCostForTwo,
      'priceRange': instance.priceRange,
      'currency': instance.currency,
      'thumb': instance.thumb,
      'featuredImage': instance.featuredImage,
      'photosUrl': instance.photosUrl,
      'menuUrl': instance.menuUrl,
      'eventsUrl': instance.eventsUrl,
      'userRating': instance.userRating,
      'hasOnlineDelivery': instance.hasOnlineDelivery,
      'isDeliveringNow': instance.isDeliveringNow,
      'hasTableBooking': instance.hasTableBooking,
      'deeplink': instance.deeplink,
      'cuisines': instance.cuisines,
      'allReviewsCount': instance.allReviewsCount,
      'photoCount': instance.photoCount,
      'phoneNumbers': instance.phoneNumbers,
      'photos': instance.photos,
      'allReviews': instance.allReviews,
    };

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    address: json['address'] as String,
    locality: json['locality'] as String,
    city: json['city'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    zipcode: json['zipcode'] as String,
    countryId: json['countryId'] as String,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'address': instance.address,
      'locality': instance.locality,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'zipcode': instance.zipcode,
      'countryId': instance.countryId,
    };

UserRating _$UserRatingFromJson(Map<String, dynamic> json) {
  return UserRating(
    aggregateRating: json['aggregateRating'] as String,
    ratingText: json['ratingText'] as String,
    ratingColor: json['ratingColor'] as String,
    votes: json['votes'] as String,
  );
}

Map<String, dynamic> _$UserRatingToJson(UserRating instance) =>
    <String, dynamic>{
      'aggregateRating': instance.aggregateRating,
      'ratingText': instance.ratingText,
      'ratingColor': instance.ratingColor,
      'votes': instance.votes,
    };

Photos _$PhotosFromJson(Map<String, dynamic> json) {
  return Photos(
    id: json['id'] as String,
    url: json['url'] as String,
    thumbUrl: json['thumbUrl'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    resId: json['resId'] as String,
    caption: json['caption'] as String,
    timestamp: json['timestamp'] as String,
    friendlyTime: json['friendlyTime'] as String,
    width: json['width'] as String,
    height: json['height'] as String,
    commentsCount: json['commentsCount'] as String,
    likesCount: json['likesCount'] as String,
  );
}

Map<String, dynamic> _$PhotosToJson(Photos instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'thumbUrl': instance.thumbUrl,
      'user': instance.user,
      'resId': instance.resId,
      'caption': instance.caption,
      'timestamp': instance.timestamp,
      'friendlyTime': instance.friendlyTime,
      'width': instance.width,
      'height': instance.height,
      'commentsCount': instance.commentsCount,
      'likesCount': instance.likesCount,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    name: json['name'] as String,
    zomatoHandle: json['zomatoHandle'] as String,
    foodieLevel: json['foodieLevel'] as String,
    foodieLevelNum: json['foodieLevelNum'] as String,
    foodieColor: json['foodieColor'] as String,
    profileUrl: json['profileUrl'] as String,
    profileDeeplink: json['profileDeeplink'] as String,
    profileImage: json['profileImage'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'zomatoHandle': instance.zomatoHandle,
      'foodieLevel': instance.foodieLevel,
      'foodieLevelNum': instance.foodieLevelNum,
      'foodieColor': instance.foodieColor,
      'profileUrl': instance.profileUrl,
      'profileDeeplink': instance.profileDeeplink,
      'profileImage': instance.profileImage,
    };

AllReviews _$AllReviewsFromJson(Map<String, dynamic> json) {
  return AllReviews(
    rating: json['rating'] as String,
    reviewText: json['reviewText'] as String,
    id: json['id'] as String,
    ratingColor: json['ratingColor'] as String,
    reviewTimeFriendly: json['reviewTimeFriendly'] as String,
    ratingText: json['ratingText'] as String,
    timestamp: json['timestamp'] as String,
    likes: json['likes'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    commentsCount: json['commentsCount'] as String,
  );
}

Map<String, dynamic> _$AllReviewsToJson(AllReviews instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'reviewText': instance.reviewText,
      'id': instance.id,
      'ratingColor': instance.ratingColor,
      'reviewTimeFriendly': instance.reviewTimeFriendly,
      'ratingText': instance.ratingText,
      'timestamp': instance.timestamp,
      'likes': instance.likes,
      'user': instance.user,
      'commentsCount': instance.commentsCount,
    };
