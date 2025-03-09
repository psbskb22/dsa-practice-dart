/*
-2, 6, -3, -10, 0, 2

maxProduct = list.first

*/



void main() {
  List<int> list1 = [-2, 6, -3, -10, 0, 2];
  List<int> list2 = [-1, -3, -10, 0, 60];
  print(maximumProductSubarray(list1));
  print(maximumProductSubarray(list2));
}


int maximumProductSubarray(List<int> list){
  int maxProduct = 0;

  for (var i = 0; i < list.length; i++) {
    int product = 1;
    for (var j = i; j < list.length; j++) {
      product *= list[j];
      if (product > maxProduct)  maxProduct = product;
    }
  }

  return maxProduct;
}



