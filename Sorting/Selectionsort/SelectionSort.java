public class SelectionSort {
    public static int [] selectionSort(int [] arr) {
        for(int sorted = 0; sorted < arr.length - 1; sorted++) {
            int min = sorted;
            for(int index = sorted + 1; index < arr.length; index++) {
                if(arr[index] < arr[min]) {
                    min = index;
                }
            }
            int temp = arr[sorted];
            arr[sorted] = min;
            arr[min] = temp;
        }
        return arr;
    }
}
