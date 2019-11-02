package algorithms;

import java.util.Scanner;

public class TaskMatrix {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("N = ");
        int n = scan.nextInt();
        int[][] q = new int[n][n];
        int z = 0;

        for(int i = 0; i < (n) * 2; i++) {
            for(int x = 0; x < n; x++) {
                for(int y = 0; y < n; y++) {
                    if(x + y == i) {
                        z++;
                        if(i % 2 == 0) {
                            q[x][y] = z;
                        } else {
                            q[y][x] = z;
                        }
                    }
                }
            }
        }

        for(int x = 0; x < n; x++) {
            System.out.println("");
            for(int y = 0; y < n; y++) {
                System.out.print(q[x][y] + "\t");
            }
        }
    }
}
