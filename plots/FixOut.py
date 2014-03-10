import csv, sys

def fixOutput(in_path, out_path):

	with open(in_path, "rb") as in_file, open(out_path, "wb") as out_file:
		reader = csv.reader(in_file, delimiter = ' ')
		writer = csv.writer(out_file)

		in_line = []
		counter = 0
		row = 0

		header = ["Capacity Range","Ford Fulkerson", "Scaling Ford Fulkerson", "Preflow Push"]
		writer.writerow(header)

		for line in reader:
			if row == 10:
				row = 0

			if counter == 0 or counter == 1:
				counter +=1
				continue
			elif counter == 2:
				in_line.append(str(5 + 10*row)+"-100")
				in_line.append(float(line[0]))
				row+=1
			elif counter == 3:
				in_line.append(float(line[0]))
			elif counter == 4:
				in_line.append(float(line[0]))
				#out_lines.append(in_line)
				writer.writerow(in_line)
				in_line = []
				counter = 1
			counter += 1

if __name__ == "__main__":
	fixOutput(sys.argv[1],sys.argv[2])