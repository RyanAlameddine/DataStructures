using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ListProjects
{
    class Program
    {
        static DoublyLinkedList<int> single = new DoublyLinkedList<int>();

        static void Main(string[] args)
        {
            single.AddToEnd(5);
            Console.WriteLine(single.ToString());
            single.AddToFront(4);
            Console.WriteLine(single.ToString());
            single.AddToFront(3);
            Console.WriteLine(single.ToString());
            single.AddToEnd(6);
            Console.WriteLine(single.ToString());
            single.RemoveFromFront();
            Console.WriteLine(single.ToString());
            single.RemoveAt(1);
            Console.WriteLine(single.ToString());
            single.RemoveAt(0);
            single.RemoveAt(0);
            Console.WriteLine(single.ToString());
            single.AddToFront(7);
            single.AddToEnd(6);
            single.AddToFront(5);
            single.AddToEnd(4);
            single.AddToFront(3);
            single.AddToEnd(2);
            single.AddToFront(1);
            Console.WriteLine(single.ToString());
            Console.ReadKey();
        }
    }
}
