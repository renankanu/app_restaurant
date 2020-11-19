// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) {
  return RestaurantModel(
    restaurant: json['restaurant'] == null
        ? null
        : Restaurant.fromJson(json['restaurant'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RestaurantModelToJson(RestaurantModel instance) =>
    <String, dynamic>{
      'restaurant': instance.restaurant,
    };

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return Restaurant(
    r: json['r'] == null ? null : R.fromJson(json['r'] as Map<String, dynamic>),
    apikey: json['apikey'] as String,
    id: json['id'] as String,
    name: json['name'] as String,
    url: json['url'] as String,
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    switchToOrderMenu: json['switchToOrderMenu'] as int,
    cuisines: json['cuisines'] as String,
    timings: json['timings'] as String,
    averageCostForTwo: json['averageCostForTwo'] as int,
    priceRange: json['priceRange'] as int,
    currency: json['currency'] as String,
    highlights: (json['highlights'] as List)?.map((e) => e as String)?.toList(),
    offers: json['offers'] as List,
    opentableSupport: json['opentableSupport'] as int,
    isZomatoBookRes: json['isZomatoBookRes'] as int,
    mezzoProvider: json['mezzoProvider'] as String,
    isBookFormWebView: json['isBookFormWebView'] as int,
    bookFormWebViewUrl: json['bookFormWebViewUrl'] as String,
    bookAgainUrl: json['bookAgainUrl'] as String,
    thumb: json['thumb'] as String,
    userRating: json['userRating'] == null
        ? null
        : UserRating.fromJson(json['userRating'] as Map<String, dynamic>),
    allReviewsCount: json['allReviewsCount'] as int,
    photosUrl: json['photosUrl'] as String,
    photoCount: json['photoCount'] as int,
    menuUrl: json['menuUrl'] as String,
    featuredImage: json['featuredImage'] as String,
    hasOnlineDelivery: json['hasOnlineDelivery'] as int,
    isDeliveringNow: json['isDeliveringNow'] as int,
    storeType: json['storeType'] as String,
    includeBogoOffers: json['includeBogoOffers'] as bool,
    deeplink: json['deeplink'] as String,
    isTableReservationSupported: json['isTableReservationSupported'] as int,
    hasTableBooking: json['hasTableBooking'] as int,
    eventsUrl: json['eventsUrl'] as String,
    phoneNumbers: json['phoneNumbers'] as String,
    allReviews: json['allReviews'] == null
        ? null
        : AllReviews.fromJson(json['allReviews'] as Map<String, dynamic>),
    establishment:
        (json['establishment'] as List)?.map((e) => e as String)?.toList(),
    establishmentTypes: json['establishmentTypes'] as List,
    medioProvider: json['medioProvider'] as int,
  );
}

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'r': instance.r,
      'apikey': instance.apikey,
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'location': instance.location,
      'switchToOrderMenu': instance.switchToOrderMenu,
      'cuisines': instance.cuisines,
      'timings': instance.timings,
      'averageCostForTwo': instance.averageCostForTwo,
      'priceRange': instance.priceRange,
      'currency': instance.currency,
      'highlights': instance.highlights,
      'offers': instance.offers,
      'opentableSupport': instance.opentableSupport,
      'isZomatoBookRes': instance.isZomatoBookRes,
      'mezzoProvider': instance.mezzoProvider,
      'isBookFormWebView': instance.isBookFormWebView,
      'bookFormWebViewUrl': instance.bookFormWebViewUrl,
      'bookAgainUrl': instance.bookAgainUrl,
      'thumb': instance.thumb,
      'userRating': instance.userRating,
      'allReviewsCount': instance.allReviewsCount,
      'photosUrl': instance.photosUrl,
      'photoCount': instance.photoCount,
      'menuUrl': instance.menuUrl,
      'featuredImage': instance.featuredImage,
      'hasOnlineDelivery': instance.hasOnlineDelivery,
      'isDeliveringNow': instance.isDeliveringNow,
      'storeType': instance.storeType,
      'includeBogoOffers': instance.includeBogoOffers,
      'deeplink': instance.deeplink,
      'isTableReservationSupported': instance.isTableReservationSupported,
      'hasTableBooking': instance.hasTableBooking,
      'eventsUrl': instance.eventsUrl,
      'phoneNumbers': instance.phoneNumbers,
      'allReviews': instance.allReviews,
      'establishment': instance.establishment,
      'establishmentTypes': instance.establishmentTypes,
      'medioProvider': instance.medioProvider,
    };

R _$RFromJson(Map<String, dynamic> json) {
  return R(
    resId: json['resId'] as int,
    isGroceryStore: json['isGroceryStore'] as bool,
    hasMenuStatus: json['hasMenuStatus'] == null
        ? null
        : HasMenuStatus.fromJson(json['hasMenuStatus'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RToJson(R instance) => <String, dynamic>{
      'resId': instance.resId,
      'isGroceryStore': instance.isGroceryStore,
      'hasMenuStatus': instance.hasMenuStatus,
    };

HasMenuStatus _$HasMenuStatusFromJson(Map<String, dynamic> json) {
  return HasMenuStatus(
    delivery: json['delivery'] as int,
    takeaway: json['takeaway'] as int,
  );
}

Map<String, dynamic> _$HasMenuStatusToJson(HasMenuStatus instance) =>
    <String, dynamic>{
      'delivery': instance.delivery,
      'takeaway': instance.takeaway,
    };

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    address: json['address'] as String,
    locality: json['locality'] as String,
    city: json['city'] as String,
    cityId: json['cityId'] as int,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    zipcode: json['zipcode'] as String,
    countryId: json['countryId'] as int,
    localityVerbose: json['localityVerbose'] as String,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'address': instance.address,
      'locality': instance.locality,
      'city': instance.city,
      'cityId': instance.cityId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'zipcode': instance.zipcode,
      'countryId': instance.countryId,
      'localityVerbose': instance.localityVerbose,
    };

UserRating _$UserRatingFromJson(Map<String, dynamic> json) {
  return UserRating(
    aggregateRating: json['aggregateRating'] as String,
    ratingText: json['ratingText'] as String,
    ratingColor: json['ratingColor'] as String,
    ratingObj: json['ratingObj'] == null
        ? null
        : RatingObj.fromJson(json['ratingObj'] as Map<String, dynamic>),
    votes: json['votes'] as int,
    customRatingText: json['customRatingText'] as String,
    customRatingTextBackground: json['customRatingTextBackground'] as String,
    ratingToolTip: json['ratingToolTip'] as String,
  );
}

Map<String, dynamic> _$UserRatingToJson(UserRating instance) =>
    <String, dynamic>{
      'aggregateRating': instance.aggregateRating,
      'ratingText': instance.ratingText,
      'ratingColor': instance.ratingColor,
      'ratingObj': instance.ratingObj,
      'votes': instance.votes,
      'customRatingText': instance.customRatingText,
      'customRatingTextBackground': instance.customRatingTextBackground,
      'ratingToolTip': instance.ratingToolTip,
    };

RatingObj _$RatingObjFromJson(Map<String, dynamic> json) {
  return RatingObj(
    title: json['title'] == null
        ? null
        : Title.fromJson(json['title'] as Map<String, dynamic>),
    bgColor: json['bgColor'] == null
        ? null
        : BgColor.fromJson(json['bgColor'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RatingObjToJson(RatingObj instance) => <String, dynamic>{
      'title': instance.title,
      'bgColor': instance.bgColor,
    };

Title _$TitleFromJson(Map<String, dynamic> json) {
  return Title(
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'text': instance.text,
    };

BgColor _$BgColorFromJson(Map<String, dynamic> json) {
  return BgColor(
    type: json['type'] as String,
    tint: json['tint'] as String,
  );
}

Map<String, dynamic> _$BgColorToJson(BgColor instance) => <String, dynamic>{
      'type': instance.type,
      'tint': instance.tint,
    };

AllReviews _$AllReviewsFromJson(Map<String, dynamic> json) {
  return AllReviews(
    reviews: (json['reviews'] as List)
        ?.map((e) =>
            e == null ? null : Reviews.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AllReviewsToJson(AllReviews instance) =>
    <String, dynamic>{
      'reviews': instance.reviews,
    };

Reviews _$ReviewsFromJson(Map<String, dynamic> json) {
  return Reviews(
    review: json['review'] as List,
  );
}

Map<String, dynamic> _$ReviewsToJson(Reviews instance) => <String, dynamic>{
      'review': instance.review,
    };
