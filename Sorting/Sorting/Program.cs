using System;

namespace Sorting
{
    class Program
    {
        static void Main(string[] args)
        {
            Random rand = new Random();
            int[] numbers = new int[] { 54, 26, 93, 17, 77, 31, 44, 55, 20 };
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

            Insertion.Sort(numbers);

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
