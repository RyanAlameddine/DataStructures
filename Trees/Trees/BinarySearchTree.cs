using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trees
{
    public class BinarySearchTree
    {
        TNode root = null;
        public static int highestId = 0;

        public string InOrderTraverse()
        {
            string description = "{";
            Stack<TNode> nodes = new Stack<TNode>();
            nodes.Push(root);

            List<int> usedIds = new List<int>();

            bool finished = false;
            bool finishedLeft = false;

            while (!finished)
            {
                if (!finishedLeft)
                {
                    if(nodes.Peek().left == null)
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
                    TNode previous = null;
                    while(nodes.Peek().right == null || nodes.Peek().right == previous)
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

                }
            }
            
            return description;
        }

        public string PreOrderTraverse()
        {
            string description = "{";
            Stack<TNode> nodes = new Stack<TNode>();
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
                    TNode previous = null;
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
                        description += nodes.Peek().key + ", ";
                    }
                }
            }

            return description;
        }

        public string PostOrderTraverse()
        {
            string description = "{";
            Stack<TNode> nodes = new Stack<TNode>();
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
                    TNode previous = null;
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
                        if (nodes.Peek().parent == root && nodes.Peek().parent.right == nodes.Peek())
                        {
                            finished = true;
                            description += nodes.Peek().key + ", ";
                            description += root.key + ", ";
                            description = description.Remove(description.Count() - 2, 2);
                            description += "}";

                            break;
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

            List<TNode> previousNodes = new List<TNode>();
            List<TNode> currentNodes = new List<TNode>();

            description += root.key + ", ";
            previousNodes.Add(root);

            while (!finished)
            {
                bool anyExist = false;
                foreach(TNode node in previousNodes)
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
                currentNodes = new List<TNode>();

                if (!anyExist)
                {
                    finished = true;
                }
            }

            description = description.Remove(description.Count() - 2, 2);
            description += "}";
            return description;
        }

        public TNode Search(int key)
        {
            return BFS(key, root);
        }
        
        TNode BFS(int key, TNode current)
        {
            if (current == null) return null;
            if (key == current.key) return current;
            TNode right = BFS(key, current.right);
            TNode left = BFS(key, current.left);

            return right != null ? right : left != null ? left : null;
        }

        public TNode IterativeFind(int key)
        {
            TNode current = root;

            while(current != null && current.key != key)
            {
                if(current.key < key)
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

        public TNode Minimum()
        {
            TNode current = root;
            while(current.left != null)
            {
                current = current.left;
            }
            return current;
        }

        public TNode Maximum()
        {
            TNode current = root;
            while (current.right != null)
            {
                current = current.right;
            }
            return current;
        }

        public void Insert(TNode newNode)
        {
            TNode current = root;
            if(current != null)
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
                            break;
                        }
                    }
                }
            }
            else
            {
                root = newNode;
            }
        }

        public void Delete(TNode node)
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
                TNode greatest = node.left;
                while(greatest.right != null)
                {
                    greatest = greatest.right;
                }

                node.key = greatest.key;

                greatest.left.parent = node;
                node.left = greatest.left;

                node.right.parent = node;
            }
        }

        public bool IsEmpty()
        {
            return root != null;
        }
    }

    public class TNode{
        public int id;
        public int key;
        public TNode parent = null;
        public TNode left = null;
        public TNode right = null;

        public TNode(int key)
        {
            this.key = key;
            id = ++BinarySearchTree.highestId;
        }

        public bool isLeaf()
        {
            return left == null && right == null;
        }

        public override string ToString()
        {
            return "TNode: " + key;
        }
    }
}
