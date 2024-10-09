public class QuickSort {
    public void quickSort(int[] arr, int start, int end) {
        if (start < end) {
            int pivot = arr[end];
            int j = start;

            for (int i = start; i < end; i++) {
                if (arr[i] < pivot) {
                    int temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                    j++;
                }
            }

            int temp = arr[j];
            arr[j] = arr[end];
            arr[end] = temp;

            quickSort(arr, start, j - 1);
            quickSort(arr, j + 1, end);
        }
    }

}
