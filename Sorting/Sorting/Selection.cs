using System;
using System.Collections.Generic;
using System.Text;

namespace Sorting
{
    public class Selection
    {
        public static void Sort(int[] numbers)
        {
            for(int i = 0; i < numbers.Length - 1; i++)
            {
                int lowestIndex = i + 1;
                int value = numbers[i];
                for(int j = i; j < numbers.Length; j++)
                {
                    if(numbers[lowestIndex] > numbers[j])
                    {
                        lowestIndex = j;
                    }
                }
                numbers[i] = numbers[lowestIndex];
                numbers[lowestIndex] = value;
            }
        }
    }
}
