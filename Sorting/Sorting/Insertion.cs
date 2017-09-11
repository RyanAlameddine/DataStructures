using System;
using System.Collections.Generic;
using System.Text;

namespace Sorting
{
    public unsafe class Insertion
    {
        public static void Sort(int[] numbers)
        {
            for (int i = 1; i < numbers.Length; i++)
            {
                int value = numbers[i];
                bool isSmallest = true;
                for(int j = i - 1; j >= 0; j--)
                {
                    if (value < numbers[0])
                    {
                        break;
                    }
                    isSmallest = false;
                    if (value > numbers[j])
                    {
                        shift(numbers, i, j+1);
                        break;
                    }
                }

                if (isSmallest)
                {
                    shift(numbers, i, 0);                    
                }
            }
        }

        private static void shift(int[] numbers, int startPosition, int endPosition)
        {
            int temp = numbers[startPosition];

            for (int k = startPosition; k > endPosition; k--)
            {
                numbers[k] = numbers[k - 1];
            }

            numbers[endPosition] = temp;
        }
    }
}
