/*
[3, 0, 1, 0, 4, 0, 2]

sum = 0;

for (1 - (length - 1))

  leftMax = list[i]
  rightMax = list[i]

  //left
  for (i - (-1))
    if (list[j] > leftMax) leftMax = list[j]


  //right
  for (i - (length - 1))
    if (list[j] > leftMax) leftMax = list[j]

  if (leftMax <= rightMax) sum += (leftMax - list[i])
  else sum += (rightMax - list[i])

*/



void main() {
  List<int> list1 = [3, 0, 1, 0, 4, 0, 2];
  List<int> list2 = [3, 0, 2, 0, 4];
  List<int> list3 = [1, 2, 3, 4];
  List<int> list4 = [2, 1, 5, 3, 1, 0, 4];
  print(trappingRainWater(list1));
  print(trappingRainWater(list2));
  print(trappingRainWater(list3));
  print(trappingRainWater(list4));
}

int trappingRainWater(List<int> list){
  int sum = 0;

  for (var i = 1; i < list.length - 1; i++) {
    int leftMax = list[i];
    int rightMax = list[i];
    //left
    for (var j = i; j > -1; j--) {
      if (list[j] > leftMax) leftMax = list[j];
    }
    //right
    for (var j = i; j < list.length; j++) {
      if (list[j] > rightMax) rightMax = list[j];
    }

    int min = (leftMax < rightMax) ? leftMax : rightMax;
    sum += (min - list[i]);
    print("$leftMax, $rightMax, ${min}, ${sum}");
  }

  return sum;
}