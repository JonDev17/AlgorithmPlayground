public class InsertionSort {

    public int [] insert(int [] a, int [] array){
        int [] combined = new int[a.length + array.length];
        for(int i = 0; i < array.length; i++){
            combined[i] = array[i];
        }

        for(int i = 0; i < a.length; i++){
            for(int j = 0; j < combined.length; j++){
                if(combined[j] >= a[i]){
                   int temp = combined[j];
                   combined[j] = a[i];
                    for(int k = j + 1; k < combined.length -1; k++){
                        int temp2 = combined[k];
                        combined[k] = temp;
                        temp = temp2;
                    }
                    break;
                } else {
                    combined[array.length + i] = a[i];
                }
            }
        }
        for(int i : combined){
            System.out.print(i + " ");
        }
        return combined;
    }
}