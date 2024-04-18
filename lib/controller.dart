import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt books = 0.obs;
  RxInt selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
increment(){
    books.value++;
}
decrement(){
    books.value--;
}
}