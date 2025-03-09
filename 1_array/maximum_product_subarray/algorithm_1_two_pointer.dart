/*
-2, 6, -3, -10, 0, 2

maxProduct = -2

minProduct = -2 > -12 > -18 > -10
maxProduct = -2 > 6 > 36 > 180

min (minProduct * list[i], maxProduct * list[i], list[i])
max (minProduct * list[i], maxProduct * list[i], list[i])

*/

// min = -2 > -12 > -3
// max = -2 > 6
//
void main() {
  List<int> list1 = [-2, 6, -3, -10, 0, 2];
  List<int> list2 = [-1, -3, -10, 0, 60];
  print(maximumProductSubarray(list1));
  print(maximumProductSubarray(list2));
}


int maximumProductSubarray(List<int> list){
  int product = list.first;

  int minProduct = list.first;
  int maxProduct = list.first;

  for (var i = 1; i < list.length; i++) {
    int currMin = minProduct * list[i];
    int currMax = maxProduct * list[i];

    minProduct = getMax(currMin, currMax, list[i]);
    maxProduct = getMin(currMin, currMax, list[i]);

    if (maxProduct > product) product = maxProduct;
  }
  return product;
}

int getMax(int a, int b, int c){
  int min = a < b ? a : b;
  return min < c ? min : c;
}

int getMin(int a, int b, int c){
  int max = a > b ? a : b;
  return max > c ? max : c; 
}



