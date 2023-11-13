class Hotel {

    String? name;
    dynamic  stars;
    dynamic   price;
    String? currency;
    String? image;
    dynamic reviewScore;
    String? review;
    String? address;
@override
  String toString() {
    return 'Hotel{name: $name, stars: $stars, price: $price, currency: $currency, image: $image, reviewScore: $reviewScore, review: $review, address: $address}';
  }
   Hotel.fromJson(Map<String, dynamic> json){
      name = json['name'];
      stars= json['starts'];
      price= json['price'];
      currency= json['currency'];
      image= json['image'];
      reviewScore= json['review_score'];
      review= json['review'];
      address= json['address'];
  } 
}
