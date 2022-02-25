import 'package:get/get.dart';

class DetailController extends GetxController{
  var fav = 0.obs;
  var boo =0.obs;

  void favCounter(){
    if(fav.value==1){
      Get.snackbar("Added to cart", "Already Added to cart");
    }else
      fav.value++;
    Get.snackbar("Added to cart", "You Added to your cart");
  }

  void booCounter(){
    if(boo.value==1){
      Get.snackbar("Booked", "Already Booked");
    }else
      boo.value++;
    Get.snackbar("Booked", "sucessfully Booked");
  }

}