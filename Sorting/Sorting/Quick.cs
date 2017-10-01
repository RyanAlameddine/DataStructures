using System;
using System.Collections.Generic;
using System.Text;

namespace Sorting
{
    public unsafe class Quick
    {
        public static void Sort(int[] numbers)
        {
            quickSort(numbers, 0, numbers.Length - 1);
        }

        static void quickSort(int[] numbers, int low, int high)
        {
            if(low < high)
            {
                int p = partition(numbers, low, high);
                quickSort(numbers, low, p);
                quickSort(numbers, p + 1, high);
            }
        }

        static int partition(int[] numbers, int low, int high)
        {
            int pivot = numbers[low];
            int i = low - 1;
            int j = high + 1;
            while (true)
            {
                do
                {
                    i += 1;
                } while (numbers[i] < pivot);
                do
                {
                    j -= 1;
                } while (numbers[j] > pivot);

                if (i >= j) return j;
                swap(numbers, i, j);
            }
        }

        static void swap(int[] numbers, int first, int second)
        {
            int temp = numbers[first];
            numbers[first] = numbers[second];
            numbers[second] = temp;
        }
    }
}
