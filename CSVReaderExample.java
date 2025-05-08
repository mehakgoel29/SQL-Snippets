import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class CSVReaderExample {
    public static void main(String[] args) {
        String filePath = "data.csv"; // Replace with your CSV file path
        String line;

        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            while ((line = br.readLine()) != null) {
                String[] values = line.split(","); // Split by comma
                for (String value : values) {
                    System.out.print(value + " ");
                }
                System.out.println(); // Move to next line
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}