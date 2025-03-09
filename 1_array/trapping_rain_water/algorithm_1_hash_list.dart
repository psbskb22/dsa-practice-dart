/*
[3, 0, 1, 0, 4, 0, 2]


leftMax [0, 3, 2, 3, 0, 4, 2]
rightMax [1, 4, 3, 4, 0, 2, 0]

min(leftMax, rightMax)   [0, 3, 2, 3, 0, 2, 0]
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
  if (list.isEmpty) return 0;

  int sum = 0;

  List<int> leftMax = [for(int i = 0; i < list.length; i++) 0];
  List<int> rightMax = [for(int i = 0; i < list.length; i++) 0];

  int left = list.first;
  int right = list.last;

  for (var i = 0; i < list.length; i++) {
    if (list[i] > left) left = list[i];
    leftMax[i] = left - list[i];
  }
  for (var i = list.length - 1; i > -1; i--) {
    if (list[i] > right) right = list[i];
    rightMax[i] = right - list[i];
  }
  for (var i = 0; i < list.length; i++) {
    int min = (leftMax[i] < rightMax[i]) ? leftMax[i] : rightMax[i];
    sum += min;
  }
  return sum;
}