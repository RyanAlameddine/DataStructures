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

            description += root.key + ", ";
            previousNodes.Add(root);

            while (!finished)
            {
                bool anyExist = false;
                foreach (RBNode node in previousNodes)
                {
                    if (node.left != null)
                    {
                        anyExist = true;
                        description += node.left.key + ", ";
                        currentNodes.Add(node.left);
                    }
                    if (node.right != null)
                    {
                        anyExist = true;
                        description += node.right.key + ", ";
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
        
        public void Insert(RBNode newNode)
        {/*
            RBNode current = root;
            if (current != null)
            {
                while (true)
                {
                    if (current.key > newNode.key)
                    {
                        if (current.left != null)
                        {
                            current = current.left;
                        }
                        else
                        {
                            current.left = newNode;
                            newNode.parent = current;
                            newNode.CalculateHeight();
                            PostOrderHeightCalculation();
                            Rebalance(newNode);
                            break;
                        }
                    }
                    else
                    {
                        if (current.right != null)
                        {
                            current = current.right;
                        }
                        else
                        {
                            current.right = newNode;
                            newNode.parent = current;
                            newNode.CalculateHeight();
                            PostOrderHeightCalculation();
                            Rebalance(newNode);
                            break;
                        }
                    }
                }
            }
            else
            {
                root = newNode;
                root.CalculateHeight();
            }
            PostOrderHeightCalculation();
            */
        }

        public void Delete(RBNode node)
        {
            if (node.isLeaf())
            {
                if (node.parent.left == node)
                {
                    node.parent.left = null;
                }
                else
                {
                    node.parent.right = null;
                }
            }
            else if (node.right != null && node.left == null)
            {
                if (node.parent.left == node)
                {
                    node.parent.left = node.right;
                    node.left.parent = node.parent;
                }
                else
                {
                    node.parent.right = node.right;
                    node.right.parent = node.parent;
                }
            }
            else if (node.left != null && node.right == null)
            {
                if (node.parent.left == node)
                {
                    node.parent.left = node.left;
                    node.left.parent = node.parent;
                }
                else
                {
                    node.parent.right = node.left;
                    node.right.parent = node.parent;
                }
            }
            else
            {
                RBNode greatest = node.left;
                while (greatest.right != null)
                {
                    greatest = greatest.right;
                }

                node.key = greatest.key;
                greatest.parent.right = greatest.left;
                RBNode parent = greatest.parent;
                greatest.parent = node.parent;
            }
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

        public RBNode(int key, ConsoleColor color)
        {


            this.key = key;
            this.color = color;
            id = ++AVL.highestId;
        }

        public bool isLeaf()
        {
            return left == null && right == null;
        }

        public override string ToString()
        {
            return "RBNode: " + key;
        }
    }
}
