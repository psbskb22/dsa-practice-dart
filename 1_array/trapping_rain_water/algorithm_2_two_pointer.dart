/*
[3, 0, 1, 0, 4, 0, 2]

leftMax = 3
rightMax = 2 > 4

result = 0

left = 3, 2, 3
right = rightMax < leftMax = 2 > 0


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

  int leftMax = list.first;
  int rightMax = list.last;

  int left = 1;
  int right = list.length - 2;

  while (left <= right){
    //left
    if (leftMax < rightMax){
      if (list[left] > leftMax) {
        leftMax = list[left];
      }
      else{
        sum += (leftMax - list[left]);
        left ++;
      }
    }
    //right
    else{
      if (list[right] > rightMax) {
        rightMax = list[right];
      }
      else{
        sum += (rightMax - list[right]);
        right --;
      }
    }
    
  }
  return sum;
}