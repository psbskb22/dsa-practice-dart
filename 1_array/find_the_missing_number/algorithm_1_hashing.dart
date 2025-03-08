/*
arr[] = [1, 2, 4, 6, 3, 7, 8] 

newList = [0, 0, 0, 0, 0, 0, 0]
newList = [1, 2, 3, 4, 0, 6, 7, 8]

Time - O(n)
Space - O(n)

*/


void main(){
  List<int> list1 = [1, 2, 4, 6, 3, 7, 8];
  List<int> list2 = [1, 2, 3, 5];
  print(missingNumber(list1));
  print(missingNumber(list2));
}

int missingNumber(List<int> list){
  List<int> newList = [for(int i = 0; i < list.length + 1; i++) 0];
  int shiftIndex = 1;
  for (int i = 0; i < list.length; i++){
    newList[list[i] - shiftIndex] = list[i];
  }
  for (var i = 0; i < newList.length; i++) {
    if (newList[i] == 0) return i + shiftIndex;
  }
  return -1;
}