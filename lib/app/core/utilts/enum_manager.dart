enum EnumLanguage { ARABIC, ENGLISH }

enum EnumENV { REAL, TEST }

enum EnumMainCateAndSubCatHasBrandsCases {
  ZERO_CASE, // show products {{url}}/api/app/products?category_id=39&brand_id=116 return products directly
  ONE_CASE, // call {{url}}/api/app/categories/brands/39 return brands related with this cat
  TWO_CASE, // call {{url}}/api/app/categories/subs/39  return sub cat related with this cat
}

enum EnumBrandsCases {
  ZERO_CASE, // show products {{url}}/api/app/products?category_id=39&brand_id=116 return products directly
  ONE_CASE, //  call {{url}}/api/app/categories/subs/39  return sub cat related with this cat
}

enum OrderTypes { topup, serial }

enum EnumCloudinaryFolder { receipt, profile, ticket }

enum EnumPaymentBrand { VISA_MASTER, MADA, STC_PAY, APPLEPAY, URPAY }

enum PaymentMethod {
  alrajhi, // show products {{url}}/api/app/products?category_id=39&brand_id=116 return products directly
  balance, //  call {{url}}/api/app/categories/subs/39  return sub cat related with this cat
}

enum EnumPaymentType {
  BUY_GIFT, // show products {{url}}/api/app/products?category_id=39&brand_id=116 return products directly
  BUY_PRODUCTS, //  call {{url}}/api/app/categories/subs/39  return sub cat related with this cat// show products {{url}}/api/app/products?category_id=39&brand_id=116 return products directly
  BUY_DIRECT,
}

enum EnumAddBalance {
  Deposit, // show products {{url}}/api/app/products?category_id=39&brand_id=116 return products directly
  withdrawal, //  call {{url}}/api/app/categories/subs/39  return sub cat related with this cat
}

enum EnumPaymentMethodRequest {
  cart, // show products {{url}}/api/app/products?category_id=39&brand_id=116 return products directly
  direct, //  call {{url}}/api/app/categories/subs/39  return sub cat related with this cat
}

enum EnumHomeStyle { st1, st2, st3 }

enum EnumProfileDocumentTypes { identity, tax_card, commercial_register, more }

enum EnumHomeOption { category, banner }

enum EnumPointStatus { purchase_product, complete_profile, share_friend }

enum EnumProductDetialsType {
  serial,

  /// value =0
  topup,

  /// value =1
  gift,

  /// value =2
}

enum EnumProductDetailsOptionTypes { select, radio, checkbox, text, textarea }

enum StatusOrderDetails { completed, waiting, in_progress, rejected }

enum EnumNotifictionType { order, complaint, customer, rating }

enum EnumPayMethod { MADA, VISA_MASTER, STC_PAY, APPLEPAY, URPAY, KNET }

enum EnumEmployeeStatus { active, inactive }
