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

            RBNode del = tree.Search(9);

            tree.Delete(del);

            Console.WriteLine(tree.LevelOrderTraverse());

            Console.ReadKey();
        }
    }
}
