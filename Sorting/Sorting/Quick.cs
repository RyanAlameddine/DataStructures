using System;
using System.Collections.Generic;
using System.Text;

namespace Sorting
{
    public unsafe class Quick
    {
        public static void Sort(int[] numbers)
        {
            partition(numbers, 0, numbers.Length - 1);
        }

        static void partition(int[] numbers, int start, int end)
        {
            if (end - start <= 0) return;
            int Ist = start;
            int IInd = end - 1;
            int pivot = numbers[end];
            while(numbers[Ist] > numbers[IInd])
            {
                if(numbers[Ist] > pivot)
                {
                    while(numbers[IInd] > pivot)
                    {
                        IInd++;
                        if(Ist < IInd)
                        {
                            swap(numbers, end, IInd);
                            partition(numbers, start, IInd - 1);
                            partition(numbers, IInd + 1, end);
                            return;
                        }
                    }
                    swap(numbers, Ist, IInd);
                }
                Ist++;
            }
            swap(numbers, Ist, end);
            partition(numbers, start, Ist - 1);
            partition(numbers, Ist + 1, end);
        }

        static void swap(int[] numbers, int first, int second)
        {
            int temp = numbers[first];
            numbers[first] = numbers[second];
            numbers[second] = temp;
        }
    }
}
