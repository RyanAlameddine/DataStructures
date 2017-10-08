using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Trees
{
    class Program
    {
        static void Main(string[] args)
        {
            AVL tree = new AVL();
            tree.Insert(new AVLNode(5));
            tree.Insert(new AVLNode(7));
            tree.Insert(new AVLNode(9));
            tree.Insert(new AVLNode(8));
            tree.Insert(new AVLNode(10));
            tree.Insert(new AVLNode(11));

            Console.WriteLine("");

            Console.WriteLine(tree.Minimum().key);
            Console.WriteLine(tree.Maximum().key);

            Console.WriteLine("");

            Console.WriteLine(tree.InOrderTraverse());
            Console.WriteLine(tree.PreOrderTraverse());
            Console.WriteLine(tree.PostOrderTraverse());
            Console.WriteLine(tree.LevelOrderTraverse());

            Console.WriteLine("");

            Console.ReadKey();
        }
    }
}
