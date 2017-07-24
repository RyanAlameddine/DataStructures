using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Recursion
{
    class Program
    {

        //factorial (5) = 120
        static int Factorial(int x)
        {
            int value = x;
            if(x > 1)
            {
                value *= Factorial(x - 1);
            }
            return value;
        }

        static int fib(int index)
        {
            if(index == 1)
            {
                return 0;
            }else if(index == 2)
            {
                return 1;
            }else
            {
                return fib(index - 1) + fib(index - 2);
            }
        }


        //fibb(6) = 0 1 1 2 3 5

        static void Main(string[] args)
        {
            Console.WriteLine(Factorial(5));
            Console.WriteLine(fib(7));
            Console.ReadKey();
        }
    }
}
