import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class ReadCSV {

	public ArrayList<String[]> read(String path) {

		ArrayList<String[]> ret_arr = new ArrayList<String[]>();
		String csvFile = path;
		BufferedReader br = null;
		String line = "";
		String csvSplitBy = " ";

		try {
			br = new BufferedReader(new FileReader(csvFile));
			while((line = br.readLine()) != null) {
				String[] line_in = line.split(csvSplitBy);
				ret_arr.add(line_in);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return ret_arr;
	}
}