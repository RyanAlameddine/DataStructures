using System;
using System.Collections.Generic;
using System.Text;

namespace Sorting
{
    public unsafe class Bubble
    {
        public static void Sort(int[] numbers)
        {
            bool completed = false;
            while (!completed)
            {
                completed = true;
                for (int i = 0; i < numbers.Length - 1; i++)
                {
                    int num = numbers[i];
                    if (num > numbers[i + 1])
                    {
                        numbers[i] = numbers[i + 1];
                        numbers[i + 1] = num;
                        completed = false;
                    }
                }
            }
        }
    }
}
