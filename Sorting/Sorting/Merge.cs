using System;
using System.Collections.Generic;
using System.Text;

namespace Sorting
{
    public unsafe class Merge
    {
        public static void MergeSort(int[] numbers)
        { 
            int length = (int)Math.Ceiling(numbers.Length / 2f);
            bool addedZero = false;
            if (numbers.Length / 2 != length) {
                addedZero = true;
            }
            int[] left = new int[length];
            int[] right = new int[length];
            for(int i = 0; i < length; i++)
            {
                left[i] = 
            }
        }

        static void MergeGroups()
        {

        }
    }
}
