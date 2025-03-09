/*
-2, 6, -3, -10, 0, 2

maxProduct = -2



*/

void main() {
  List<int> list1 = [-2, 6, -3, -10, 0, 2];
  List<int> list2 = [-1, -3, -10, 0, 60];
  print(maximumProductSubarray(list1));
  print(maximumProductSubarray(list2));
}


int maximumProductSubarray(List<int> list){
  int product = list.first;

  int leftProduct = list.first;
  int rightProduct = list.last;

  if (leftProduct > product) product = leftProduct;
  if (rightProduct > product) product = rightProduct;

  for (var i = 1; i < list.length; i++) {
    if (leftProduct == 0) leftProduct = list[i];
    else{
      leftProduct = leftProduct * list[i];
      if (leftProduct > product) product = leftProduct;
    }
  }

  for (var i = list.length - 2; i > -1; i--) {
    if (rightProduct == 0) rightProduct = list[i];
    else{
      rightProduct *= list[i];
      if (rightProduct > product) product = rightProduct;
    }
  }

  return product;
}



