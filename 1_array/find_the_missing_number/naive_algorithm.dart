/*
arr[] = [1, 2, 4, 6, 3, 7, 8] 

Time - O(n^2)
Space - O(1)
*/


void main(){
  List<int> list1 = [1, 2, 4, 6, 3, 7, 8];
  List<int> list2 = [1, 2, 3, 5];
  print(missingNumber(list1));
  print(missingNumber(list2));
}

int missingNumber(List<int> list){
  for (int i = 1; i < list.length + 1; i++){
    bool isContain = false;
    for (var j = 0; j < list.length; j++) {
      if (i == list[j]) isContain = true;
    }
    if (isContain == false) return i;
  }
  return -1;
}