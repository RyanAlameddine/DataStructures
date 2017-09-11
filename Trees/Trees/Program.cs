using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trees
{
    class Program
    {
        static void Main(string[] args)
        {
            BinarySearchTree tree = new BinarySearchTree();
            tree.Insert(new TNode(5));
            tree.Insert(new TNode(6));
            tree.Insert(new TNode(3));
            tree.Insert(new TNode(2));
            tree.Insert(new TNode(7));
            tree.Insert(new TNode(8));
            tree.Insert(new TNode(9));
            tree.Insert(new TNode(0));
            tree.Insert(new TNode(1));
            tree.Insert(new TNode(4));

            TNode node = tree.Search(5);
            Console.WriteLine(node.id);
            Console.WriteLine(tree.Minimum().key);
            Console.WriteLine(tree.Maximum().key);
            Console.WriteLine(tree.InOrderTraverse());
            Console.ReadKey();
        }
    }
}
