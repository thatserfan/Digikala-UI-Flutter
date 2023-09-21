int getDiscount(int price,int beforePrice){
  return (((beforePrice - price) / beforePrice.abs()) * 100).toInt();
}