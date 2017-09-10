using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ListProjects
{
    class Program
    {
        static Queue<int> queue = new Queue<int>();

        static void Main(string[] args)
        {
            queue.Enqueue(5);
            queue.Enqueue(6);
            queue.Enqueue(7);
            Console.WriteLine(queue.ToString());
            Console.WriteLine(queue.Dequeue());
            Console.WriteLine(queue.ToString());
            Console.ReadKey();
        }
    }
}
