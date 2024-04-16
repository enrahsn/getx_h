import 'package:get/get.dart';
class RebuildController extends GetxController {
  var count1 = 0.obs;
  var count2 = 0.obs;
void incrementOne(){
  count1++;
}
void decrementOne(){
  count1--;
}
void incrementTwo(){
  count2++;
}
void decrementTwo(){
  count2--;
}
int get sum => count1.value + count2.value ;

}