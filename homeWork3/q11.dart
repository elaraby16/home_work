// Write a Dart program that applies discounts to a price. Use nested if/else to apply different
// discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
// Print the final price
void main() {
  int price = 3200;
  int threshold = 2500;
  bool isStudent = false;
  bool hasCoupon = false;
  // ignore: dead_code
  if (isStudent) {
     double discountValue = 0.50;
     double discount=price*(1-discountValue);
    print('Activate the discount, the price =$discount');
  }

  // ignore: dead_code
  else if (hasCoupon){
     double discountValue = 0.40;
     double discount=price*(1-discountValue);
    print('Activate the discount, the price =$discount');
  }

  else if (price>threshold){
     double discountValue = 0.25;
     double discount=price*(1-discountValue);
    print('Activate the discount, the price =$discount');
  }
  else print('No discount applied, the price =$price');
}
