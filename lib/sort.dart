class Sort{
  void mergeSort(List list){
    if(list.length < 2) return;
    int mid = list.length ~/ 2;
    List left = list.sublist(0, mid);
    List right = list.sublist(mid);
    mergeSort(left);
    mergeSort(right);
    _merge(left, right, list);
  }
  _merge(List left, List right, List list){
    int i = 0, j = 0, k = 0;
    while(i < left.length && j < right.length){
      if(left[i] <= right[j]){
        list[k] = left[i];
        i++;
      }else{
        list[k] = right[j];
        j++;
      }
      k++;
    }
    while(i < left.length){
      list[k] = left[i];
      i++;
      k++;
    }
    while(j < right.length){
      list[k] = right[j];
      j++;
      k++;
    }
  }
}