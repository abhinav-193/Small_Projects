// 7 Segment Display in JAVA - Sumit Kumar

import java.io.*;

public class SevenSegmentDisplay {

    // lookupSegments[digit][segment] == 1 if the digit has the segment switched ON
    final int lookupSegments[][] = { { 1, 1, 1, 1, 1, 1, 0 }, { 0, 1, 1, 0, 0, 0, 0 }, { 1, 1, 0, 1, 1, 0, 1 },
            { 1, 1, 1, 1, 0, 0, 1 }, { 0, 1, 1, 0, 0, 1, 1 }, { 1, 0, 1, 1, 0, 1, 1 }, { 1, 0, 1, 1, 1, 1, 1 },
            { 1, 1, 1, 0, 0, 0, 0 }, { 1, 1, 1, 1, 1, 1, 1 }, { 1, 1, 1, 1, 0, 1, 1 }, };

    public static void main(String args[]) throws IOException {

        SevenSegmentDisplay sevenSegmentDisplay = new SevenSegmentDisplay();
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Enter Size of Each Segment: ");
        int segmentSize = Integer.parseInt(reader.readLine());

        if (segmentSize < 1) {
            System.out.println("\nError: Segment Size Must Be >= 1\n");
            return;
        }

        System.out.println("Enter Number to Print: ");
        int numberToPrint = Integer.parseInt(reader.readLine());

        System.out.println("");

        int numberOfDigits = 0;
        for (int i = numberToPrint; i > 0; i /= 10) {
            numberOfDigits++;
        }

        final int numberOfRows = 2 * segmentSize + 3;
        final int numberOfColumns = numberOfDigits * (segmentSize + 3);
        // Contains the number representation as a 2D character array
        char[][] buffer = new char[numberOfRows][numberOfColumns];
        // Initialize buffer to all spaces
        for (int i = 0; i < numberOfRows; i++) {
            for (int j = 0; j < numberOfColumns; j++) {
                buffer[i][j] = ' ';
            }
        }
        for (int i = 0; i < numberOfDigits; i++) {
            int currentDigit = numberToPrint % 10;
            numberToPrint /= 10;
            int offset = (numberOfDigits - i - 1) * (segmentSize + 3);
            // Horizontal Segments
            // Segment A
            if (sevenSegmentDisplay.lookupSegments[currentDigit][0] != 0) {
                for (int j = 0; j < segmentSize; j++) {
                    buffer[0][offset + 1 + j] = '-';
                }
            }
            // Segment D
            if (sevenSegmentDisplay.lookupSegments[currentDigit][3] != 0) {
                for (int j = 0; j < segmentSize; j++) {
                    buffer[numberOfRows - 1][offset + 1 + j] = '-';
                }
            }
            // Segment G
            if (sevenSegmentDisplay.lookupSegments[currentDigit][6] != 0) {
                for (int j = 0; j < segmentSize; j++) {
                    buffer[segmentSize + 1][offset + 1 + j] = '-';
                }
            }
            // Vertical Segments
            // Segment B
            if (sevenSegmentDisplay.lookupSegments[currentDigit][1] != 0) {
                for (int j = 0; j < segmentSize; j++) {
                    buffer[j + 1][offset + 1 + segmentSize] = '|';
                }
            }
            // Segment C
            if (sevenSegmentDisplay.lookupSegments[currentDigit][2] != 0) {
                for (int j = 0; j < segmentSize; j++) {
                    buffer[j + segmentSize + 2][offset + 1 + segmentSize] = '|';
                }
            }
            // Segment E
            if (sevenSegmentDisplay.lookupSegments[currentDigit][4] != 0) {
                for (int j = 0; j < segmentSize; j++) {
                    buffer[j + segmentSize + 2][offset] = '|';
                }
            }
            // Segment F
            if (sevenSegmentDisplay.lookupSegments[currentDigit][5] != 0) {
                for (int j = 0; j < segmentSize; j++) {
                    buffer[j + 1][offset] = '|';
                }
            }
        }
        // Display the buffer
        for (int i = 0; i < numberOfRows; i++) {
            for (int j = 0; j < numberOfColumns; j++) {
                System.out.print(buffer[i][j]);
            }
            System.out.println("");
        }

    }
}