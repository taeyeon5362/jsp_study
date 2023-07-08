package ch04.com.dao;

public class GuGuDan {
    public int[] process (int n) {
        int[] result = new int[9];
        for(int i=0; i<9; i++)
            result[i] = n*(i+1);
        return result;
    }
}
