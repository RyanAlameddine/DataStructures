using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace Sorting
{
    public unsafe class Merge
    {
        public static void MergeSort(int[] numbers)
        {
            int start = 0;
            int end = numbers.Length - 1;
            SplitGroups(numbers, start, end);
        }

        static void SplitGroups(int[] numbers, int start, int end)
        {
            if(end - start > 1)
            {
                int middle = (int)Math.Ceiling((end - start) / 2f + start);
                SplitGroups(numbers, start, middle);
                SplitGroups(numbers, middle + 1, end + 1);
                MergeGroups(numbers, start, end);

            }
            else
            {
                MergeGroups(numbers, start, end);
            }
        }

        static void MergeGroups(int[] numbers, int start, int end)
        {
            int[] temp = new int[end - start + 1];
            int middle = (int)Math.Ceiling((end - start) / 2f + start);
            int left1 = numbers[start];
            int indexL = 0;
            int right1 = numbers[middle];
            int indexR = 0;

            int index = 0;

            while(index < temp.Length)
            {
                if (numbers[indexL + start] > numbers[indexR + middle] && indexR < middle - start)
                {
                    temp[index] = numbers[middle + indexR];
                    indexR++;
                }
                else
                {
                    temp[index] = numbers[indexL + start];
                    indexL++;
                }
                index++;
            }
            for(int i = start; i < temp.Length + start; i++)
            {
                numbers[i] = temp[i - start];
            }
        }
    }
}
