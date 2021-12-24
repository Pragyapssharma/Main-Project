import 'dart:io';

void main(List<String> arguments) {
  print('Enter Number of elements: ');
  int N=int.parse(stdin.readLineSync()!);
  List<int> arr = [];
  for(int i=0;i<N;i++){
    print('Enter ${i+1} number: ');
    arr.add(int.parse(stdin.readLineSync()!));
  }
  List<int> sortedarr = bubbleSort(arr);
  print('Bubble Sort: $sortedarr');
}

bubbleSort(List<int> arr) {
  int len = arr.length;
  for (int i = 0; i < len - 1; i++) {
    for (int j = 0; j < len - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return (arr);
}