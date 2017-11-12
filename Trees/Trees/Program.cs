using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Trees
{
    class Program
    {
        static void Main(string[] args)
        {
            float x = 0.7f;
            float y = 0.1f;
            float z = x + y;
            Console.WriteLine(z);


            //Console.WriteLine(a + b);

            for (float i = 0; i < 1; i += 0.1f)
            {
                Console.WriteLine(i);
            }
            Console.ReadLine();

            RedBlackTree tree = new RedBlackTree();

            tree.Insert(new RBNode(8));
            tree.Insert(new RBNode(5));
            tree.Insert(new RBNode(7));
            tree.Insert(new RBNode(12));
            tree.Insert(new RBNode(9));
            tree.Insert(new RBNode(10));
            tree.Insert(new RBNode(11));

            Console.WriteLine(tree.LevelOrderTraverse());

            Console.WriteLine("");

            Console.ReadKey();
        }
    }
}
