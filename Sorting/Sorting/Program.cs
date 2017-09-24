using System;

namespace Sorting
{
    unsafe class Program
    {
        static void Main(string[] args)
        {
            Random rand = new Random();
            int[] numbers = new int[] { 6, 8, 4, 5, 7 };
            for (int i = 0; i < numbers.Length; i++)
            {
                //numbers[i] = rand.Next(-20, 20);
                Console.Write(numbers[i]);

                if (i != numbers.Length - 1)
                {
                    Console.Write(",");
                }
            }
            Console.WriteLine();
            Console.WriteLine();

            Quick.Sort(numbers);

            for (int i = 0; i < numbers.Length; i++)
            {
                Console.Write(numbers[i]);

                if (i != numbers.Length - 1)
                {
                    Console.Write(",");
                }
            }
            Console.ReadKey();
        }
    }
}
