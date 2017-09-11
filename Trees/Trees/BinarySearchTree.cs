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

        //public void PostOrderTraverse()
        //{

        //}

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

        //public TNode IterativeFind(int position)
        //{

        //}

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

        //public void Delete(TNode node)
        //{

        //}

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
    }
}
