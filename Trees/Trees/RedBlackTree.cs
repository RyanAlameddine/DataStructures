using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trees
{
    public class RedBlackTree
    {
        public static int highestId = 0;
        RBNode root = null;

        public RedBlackTree()
        {
            root = new RBNode(null);
        }

        public string InOrderTraverse()
        {
            string description = "{";
            Stack<RBNode> nodes = new Stack<RBNode>();
            nodes.Push(root);

            List<int> usedIds = new List<int>();

            bool finished = false;
            bool finishedLeft = false;

            while (!finished)
            {
                if (!finishedLeft)
                {
                    if (nodes.Peek().left == null)
                    {
                        finishedLeft = true;
                    }
                    else
                    {
                        nodes.Push(nodes.Peek().left);
                    }
                }
                else
                {
                    RBNode previous = null;
                    while (nodes.Peek().right == null || nodes.Peek().right == previous)
                    {
                        if (nodes.Peek().parent == root && nodes.Peek().parent.right == nodes.Peek())
                        {
                            finished = true;
                            description = description.Remove(description.Count() - 2, 2);
                            description += "}";
                            break;
                        }
                        previous = nodes.Peek();
                        if (!usedIds.Contains(nodes.Peek().id))
                        {
                            usedIds.Add(nodes.Peek().id);
                            description += nodes.Pop().key + ", ";
                        }
                        else
                        {
                            nodes.Pop();
                        }
                        if (nodes.Count() == 0)
                        {
                            finished = true;
                            description = description.Remove(description.Count() - 2, 2);
                            description += "}";
                            return description;
                        }

                    }
                    if (!finished)
                    {
                        if (!usedIds.Contains(nodes.Peek().id))
                        {
                            usedIds.Add(nodes.Peek().id);
                            description += nodes.Peek().key + ", ";
                        }
                    }
                    finishedLeft = false;
                    nodes.Push(nodes.Peek().right);

                }
            }

            return description;
        }

        public string PreOrderTraverse()
        {
            string description = "{";
            Stack<RBNode> nodes = new Stack<RBNode>();
            nodes.Push(root);
            description += nodes.Peek().key + ", ";

            List<int> usedIds = new List<int>();
            usedIds.Add(nodes.Peek().id);

            bool finished = false;
            bool finishedLeft = false;

            while (!finished)
            {
                if (!finishedLeft)
                {
                    if (nodes.Peek().left == null)
                    {
                        finishedLeft = true;
                    }
                    else
                    {
                        nodes.Push(nodes.Peek().left);
                        if (!usedIds.Contains(nodes.Peek().id))
                        {
                            usedIds.Add(nodes.Peek().id);
                            description += nodes.Peek().key + ", ";
                        }
                    }
                }
                else
                {
                    RBNode previous = null;
                    while (nodes.Peek().right == null || nodes.Peek().right == previous)
                    {
                        previous = nodes.Peek();
                        if (!usedIds.Contains(nodes.Peek().id))
                        {
                            usedIds.Add(nodes.Peek().id);
                            description += nodes.Pop().key + ", ";
                        }
                        else
                        {
                            nodes.Pop();
                        }
                        if (nodes.Count() == 0)
                        {
                            finished = true;
                            description = description.Remove(description.Count() - 2, 2);
                            description += "}";
                            return description;
                        }
                        if (nodes.Peek().parent == root && nodes.Peek().parent.right == nodes.Peek())
                        {
                            finished = true;
                            description = description.Remove(description.Count() - 2, 2);
                            description += "}";
                            break;
                        }
                    }
                    if (!finished)
                    {
                        if (!usedIds.Contains(nodes.Peek().id))
                        {
                            usedIds.Add(nodes.Peek().id);
                            description += nodes.Peek().key + ", ";
                        }
                    }
                    finishedLeft = false;
                    nodes.Push(nodes.Peek().right);
                    if (!usedIds.Contains(nodes.Peek().id))
                    {
                        usedIds.Add(nodes.Peek().id);
                        if (finished)
                        {
                            description = description.Remove(description.Count() - 1, 1);
                            description += ", " + nodes.Peek().key + "}";
                        }
                        else
                        {
                            description += nodes.Peek().key + ", ";
                        }
                    }
                }
            }

            return description;
        }

        public string PostOrderTraverse()
        {
            string description = "{";
            Stack<RBNode> nodes = new Stack<RBNode>();
            nodes.Push(root);

            List<int> usedIds = new List<int>();

            bool finished = false;
            bool finishedLeft = false;

            while (!finished)
            {
                if (!finishedLeft)
                {
                    if (nodes.Peek().left == null)
                    {
                        finishedLeft = true;
                    }
                    else
                    {
                        nodes.Push(nodes.Peek().left);
                    }
                }
                else
                {
                    RBNode previous = null;
                    while (nodes.Peek().right == null || nodes.Peek().right == previous)
                    {
                        if (nodes.Peek().parent == root && nodes.Peek().parent.right == nodes.Peek())
                        {
                            finished = true;
                            description += nodes.Peek().key + ", ";
                            description += root.key + ", ";
                            description = description.Remove(description.Count() - 2, 2);
                            description += "}";

                            break;
                        }
                        previous = nodes.Peek();
                        if (!usedIds.Contains(nodes.Peek().id))
                        {
                            usedIds.Add(nodes.Peek().id);
                            description += nodes.Pop().key + ", ";
                        }
                        else
                        {
                            nodes.Pop();
                        }
                        if (nodes.Count() == 0)
                        {
                            finished = true;
                            description = description.Remove(description.Count() - 2, 2);
                            description += "}";
                            return description;
                        }
                    }
                    finishedLeft = false;
                    nodes.Push(nodes.Peek().right);
                }
            }

            return description;
        }

        public string LevelOrderTraverse()
        {
            string description = "{";
            bool finished = false;

            List<RBNode> previousNodes = new List<RBNode>();
            List<RBNode> currentNodes = new List<RBNode>();

            description += root.key + ":" + root.color + ", ";
            previousNodes.Add(root);

            while (!finished)
            {
                bool anyExist = false;
                foreach (RBNode node in previousNodes)
                {
                    if (node.left != null)
                    {
                        anyExist = true;
                        if (!node.left.NIL)
                        {
                            description += node.left.key + ":" + node.left.color + ", ";
                        }
                        currentNodes.Add(node.left);
                    }
                    if (node.right != null)
                    {
                        anyExist = true;
                        if (!node.right.NIL)
                        {
                            description += node.right.key + ":" + node.right.color + ", ";
                        }
                        currentNodes.Add(node.right);
                    }
                }
                previousNodes = currentNodes;
                currentNodes = new List<RBNode>();

                if (!anyExist)
                {
                    finished = true;
                }
            }

            description = description.Remove(description.Count() - 2, 2);
            description += "}";
            return description;
        }

        public RBNode Search(int key)
        {
            return BFS(key, root);
        }

        RBNode BFS(int key, RBNode current)
        {
            if (current == null) return null;
            if (key == current.key) return current;
            RBNode right = BFS(key, current.right);
            RBNode left = BFS(key, current.left);

            return right != null ? right : left != null ? left : null;
        }

        public RBNode IterativeFind(int key)
        {
            RBNode current = root;

            while (current != null && current.key != key)
            {
                if (current.key < key)
                {
                    current = current.right;
                }
                else
                {
                    current = current.left;
                }
            }
            return current;
        }

        public RBNode Minimum()
        {
            RBNode current = root;
            while (current.left != null)
            {
                current = current.left;
            }
            return current;
        }

        public RBNode Maximum()
        {
            RBNode current = root;
            while (current.right != null)
            {
                current = current.right;
            }
            return current;
        }
        
        void InsertRuleCheck(RBNode x)
        {
            if (x.parent != null && x.parent.color == ConsoleColor.Red)
            {
                RBNode uncle = new RBNode(null);
                if (x.parent.parent != null)
                {
                    if (x.parent.parent.left == x.parent)
                    {
                        uncle = x.parent.parent.right;
                    }
                    else
                    {
                        uncle = x.parent.parent.left;
                    }
                }

                if (uncle.color == ConsoleColor.Red)
                {
                    //I
                    x.parent.color = ConsoleColor.Black;
                    uncle.color = ConsoleColor.Black;

                    //II
                    x.parent.parent.color = ConsoleColor.Red;

                    //III
                    InsertRuleCheck(x.parent.parent);
                }
                else
                {
                    if (x.parent.parent.left == x.parent)
                    {
                        //I - Left Right Case
                        if (x.parent.right == x)
                        {
                            RBNode main = x;
                            RBNode parent = main.parent;
                            parent.right = main.left;
                            main.left = parent;
                            main.parent = parent.parent;

                            if (parent.parent.left == parent) parent.parent.left = main;
                            else parent.parent.right = main;

                            parent.parent = main;
                            x = x.left;
                        }
                        //II - Left Left Case
                        if(x.parent.left == x)
                        {
                            RBNode main = x.parent;
                            RBNode parent = main.parent;
                            parent.left = main.right;
                            main.right = parent;
                            main.parent = parent.parent;
                            if (parent == root)
                            {
                                root = main;
                            }
                            else
                            {
                                if (parent.parent.right == parent) parent.parent.right = main;
                                else parent.parent.left = main;
                            }

                            parent.parent = main;
                            ConsoleColor color = main.color;
                            main.color = parent.color;
                            parent.color = color;
                        }
                    }
                    else
                    {
                        //III - Right Left Case
                        if (x.parent.left == x)
                        {
                            RBNode main = x;
                            RBNode parent = main.parent;
                            parent.left = main.right;
                            main.right = parent;
                            main.parent = parent.parent;

                            if (parent.parent.right == parent) parent.parent.right = main;
                            else parent.parent.left = main;

                            parent.parent = main;
                            x = x.right;
                        }
                        //II - Right Right Case
                        if(x.parent.right == x)
                        {
                            RBNode main = x.parent;
                            RBNode parent = main.parent;
                            parent.right = main.left;
                            main.left = parent;
                            main.parent = parent.parent;
                            if (parent == root)
                            {
                                root = main;
                            }
                            else
                            {
                                if (parent.parent.left == parent) parent.parent.left = main;
                                else parent.parent.right = main;
                            }

                            parent.parent = main;
                            ConsoleColor color = main.color;
                            main.color = parent.color;
                            parent.color = color;
                        }
                    }
                }
            }
            root.color = ConsoleColor.Black;
        }

        public void Insert(RBNode newNode)
        {
            RBNode current = root;
            if (current.NIL) { 
                newNode.left = root;
                root.parent = newNode;
                newNode.right = new RBNode(newNode);
                root = newNode;
                root.color = ConsoleColor.Black;
            }
            else
            {
                while (true)
                {
                    if(current.key > newNode.key)
                    {
                        if (current.left.NIL)
                        {
                            current.left = newNode;
                            newNode.parent = current;
                            current.left.left = new RBNode(current.left);
                            current.left.right = new RBNode(current.left);
                            current.left.color = ConsoleColor.Red;
                            InsertRuleCheck(current.left);
                            return;
                        }
                        else
                        {
                            current = current.left;
                        }
                    }
                    else
                    {
                        if (current.right.NIL)
                        {
                            current.right = newNode;
                            newNode.parent = current;
                            current.right.right = new RBNode(current.right);
                            current.right.left = new RBNode(current.right);
                            current.right.color = ConsoleColor.Red;
                            InsertRuleCheck(current.right);
                            return;
                        }
                        else
                        {
                            current = current.right;
                        }
                    }
                }
            }
        }

        public void Delete(RBNode node)
        {
            
        }
    }

    public class RBNode
    {
        public int id;
        public int key;
        public RBNode parent = null;
        public RBNode left = null;
        public RBNode right = null;
        public ConsoleColor color = ConsoleColor.Black;
        public bool NIL = false;

        public RBNode(int key)
        {
            this.key = key;
            id = ++AVL.highestId;
        }

        public RBNode(RBNode NILParent)
        {
            NIL = true;
            color = ConsoleColor.Black;
            parent = NILParent;
        }

        public bool isLeaf()
        {
            return left == null && right == null;
        }

        public override string ToString()
        {
            return "RBNode: " + key + ", Color: " + color;
        }
    }
}
