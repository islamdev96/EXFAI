class CouponModel {
  String? couponId;
  String? couponName;
  String? couponCount;
  String? couponDiscount;
  String? couponExpierrorate;

  CouponModel(
      {this.couponId,
      this.couponName,
      this.couponCount,
      this.couponDiscount,
      this.couponExpierrorate});

  CouponModel.fromJson(Map<String, dynamic> json) {
    couponId = json['coupon_id'].toString();
    couponName = json['coupon_name']?.toString();
    couponCount = json['coupon_count'].toString();
    couponDiscount = json['coupon_discount'].toString();
    couponExpierrorate = json['coupon_expierrorate']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coupon_id'] = couponId;
    data['coupon_name'] = couponName;
    data['coupon_count'] = couponCount;
    data['coupon_discount'] = couponDiscount;
    data['coupon_expierrorate'] = couponExpierrorate;
    return data;
  }
}
