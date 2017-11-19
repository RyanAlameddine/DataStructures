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

            description += root.ToString();
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
                            description += ", " + node.left.ToString();
                        }
                        currentNodes.Add(node.left);
                    }
                    if (node.right != null)
                    {
                        anyExist = true;
                        if (!node.right.NIL)
                        {
                            description += ", " + node.right.ToString();
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
            if (x.parent != null && x.parent.Color == ConsoleColor.Red)
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

                if (uncle.Color == ConsoleColor.Red)
                {
                    //I
                    x.parent.Color = ConsoleColor.Black;
                    uncle.Color = ConsoleColor.Black;

                    //II
                    x.parent.parent.Color = ConsoleColor.Red;

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
                            ConsoleColor color = main.Color;
                            main.Color = parent.Color;
                            parent.Color = color;
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
                            ConsoleColor color = main.Color;
                            main.Color = parent.Color;
                            parent.Color = color;
                        }
                    }
                }
            }
            root.Color = ConsoleColor.Black;
        }

        public void Insert(RBNode newNode)
        {
            RBNode current = root;
            if (current.NIL) { 
                newNode.left = root;
                root.parent = newNode;
                newNode.right = new RBNode(newNode);
                root = newNode;
                root.Color = ConsoleColor.Black;
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
                            current.left.Color = ConsoleColor.Red;
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
                            current.right.Color = ConsoleColor.Red;
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

        public void Delete(RBNode delete)
        {
            RBNode u; //replaces v
            RBNode v;

            if (delete.isLeaf())
            {
                u = delete.Destruct();
                v = delete;
            }
            else if(!delete.left.NIL && delete.right.NIL)
            {
                delete.left.parent = delete.parent;
                v = delete;
                u = delete.left;
                if(delete.parent.left == delete)
                {
                    delete.parent.left = delete.left;
                }
                else
                {
                    delete.parent.right = delete.left;
                }
            }else if (delete.left.NIL)
            {
                delete.right.parent = delete.parent;
                v = delete;
                u = delete.right;
                if (delete.parent.left == delete)
                {
                    delete.parent.left = delete.right;
                }
                else
                {
                    delete.parent.right = delete.right;
                }
            }
            else
            {
                RBNode current = delete.left;
                while (!current.right.NIL)
                {
                    current = current.right;
                }

                delete.key = current.key;
                v = current;
                bool left = v.parent.left == v ? true : false;
                Delete(v);
                if (left)
                {
                    u = v.parent.left;
                }
                else
                {
                    u = v.parent.right;
                }
            }
            DeleteRuleCheck(u, delete);
        }

        void DeleteRuleCheck(RBNode u, RBNode v)
        {
            if (u.Color == ConsoleColor.Red || v.Color == ConsoleColor.Red)
            {
                u.Color = ConsoleColor.Black;
            } else if (u.Color == ConsoleColor.Black && v.Color == ConsoleColor.Black)
            {
                u.Color = ConsoleColor.DarkBlue;

                RBNode s = u.parent.left == u ? u.parent.right : u.parent.left;
                while(u.Color == ConsoleColor.DarkBlue || u != root)
                {
                    RBNode r = s.left.Color == ConsoleColor.Red ? s.left : s.right.Color == ConsoleColor.Red ? s.right : null;
                    if (s.Color == ConsoleColor.Black && r != null)
                    {
                        Rotations(s);
                    }
                    else if (s.Color == ConsoleColor.Black && r == null)
                    {
                        s.Color = ConsoleColor.Red;
                        if (s.parent.Color == ConsoleColor.Red)
                        {
                            s.parent.Color = ConsoleColor.Black;
                            break;
                        }
                        else
                        {
                            s.parent.Color = ConsoleColor.DarkBlue;
                            u = s.parent;
                            v = u.parent;
                            s = v.left == u ? v.right : v.left;
                        }
                    }else if(s.Color == ConsoleColor.Red)
                    {
                        bool sRightChild = s.isRightChild();

                        if (sRightChild)
                        {
                            //rotate left
                            RBNode main              = s;
                            RBNode originalParent    = main.parent;
                            bool originalParentRight = originalParent.isRightChild();
                            RBNode parentParent      = originalParent.parent;
                            RBNode leftChildren      = main.left;

                            originalParent.right  = leftChildren;
                            leftChildren.parent   = originalParent;
                            main.left             = originalParent;
                            originalParent.parent = main;
                            main.parent           = parentParent;

                            if (main.parent == null) root = main;
                            else
                            {
                                if (originalParentRight) parentParent.right = main;
                                else parentParent.left = main;
                            }
                        }
                        else
                        {
                            //rotate right
                            RBNode main              = s;
                            RBNode originalParent    = main.parent;
                            bool originalParentLeft  = !originalParent.isRightChild();
                            RBNode parentParent      = originalParent.parent;
                            RBNode rightChildren     = main.right;

                            originalParent.left   = rightChildren;
                            rightChildren.parent  = originalParent;
                            main.right            = originalParent;
                            originalParent.parent = main;
                            main.parent           = parentParent;

                            if (main.parent == null) root = main;
                            else
                            {
                                if (originalParentLeft) parentParent.left = main;
                                else parentParent.right = main;
                            }
                            
                        }
                    }
                }

                if(u == root)
                {
                    u.Color = ConsoleColor.Black;
                    return;
                }
            }
        }

        void Rotations(RBNode s)
        {   //      root
            //    p      0
            //  s   0     0
            // r 0       0 0
            //00 00         

            RBNode parent = s.parent;
            //Left-Right
            if (s.isRightChild() && !parent.isRightChild())
            {
                //Rotate parent left
                RBNode main              = parent;
                RBNode originalParent    = main.parent;
                bool originalParentRight = originalParent.isRightChild();
                RBNode parentParent      = originalParent.parent;
                RBNode leftChildren      = parent.left;

                originalParent.right  = leftChildren;
                leftChildren.parent   = originalParent;
                parent.left           = originalParent;
                originalParent.parent = parent;
                parent.parent         = parentParent;


                if (originalParentRight) parentParent.right = parent;
                else parentParent.left = parent;
            }
            //Left-Left
            if (!s.isRightChild() && !parent.isRightChild())
            {
                //Rotate grandparent right and swap color of grandparent and parent
                RBNode main             = parent.parent;
                RBNode originalParent   = main.parent;
                bool originalParentLeft = !originalParent.isRightChild();
                RBNode parentParent     = originalParent.parent;
                RBNode rightChildren    = main.right;

                originalParent.left   = rightChildren;
                rightChildren.parent  = originalParent;
                main.right            = originalParent;
                originalParent.parent = main;
                main.parent           = parentParent;


                if (originalParentLeft) parentParent.left = main;
                else parentParent.right = main;

                ConsoleColor parentColor = parent.Color;
                parent.Color = main.Color;
                main.Color = parentColor;
                return;
            }

            //Right-Left
            if (!s.isRightChild() && parent.isRightChild())
            {
                //Rotate parent right
                RBNode main              = parent;
                RBNode originalParent    = main.parent;
                bool originalParentLeft  = !originalParent.isRightChild();
                RBNode parentParent      = originalParent.parent;
                RBNode rightChildren     = parent.right;

                originalParent.left   = rightChildren;
                rightChildren.parent  = originalParent;
                parent.right          = originalParent;
                originalParent.parent = parent;
                parent.parent         = parentParent;


                if (originalParentLeft) parentParent.left = parent;
                else parentParent.right = parent;
            }
            //Right-Right
            if (s.isRightChild() && parent.isRightChild())
            {
                //Rotate grandparent left and swap color of grandparent and parent
                RBNode main              = parent.parent;
                RBNode originalParent    = main.parent;
                bool originalParentRight = originalParent.isRightChild();
                RBNode parentParent      = originalParent.parent;
                RBNode leftChildren      = main.left;

                originalParent.right  = leftChildren;
                leftChildren.parent   = originalParent;
                main.left             = originalParent;
                originalParent.parent = main;
                main.parent           = parentParent;


                if (originalParentRight) parentParent.right = main;
                else parentParent.left = main;

                ConsoleColor parentColor = parent.Color;
                parent.Color = main.Color;
                main.Color = parentColor;
                return;
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
        public ConsoleColor Color
        {
            get { return color; }
            set { if (color == ConsoleColor.DarkBlue && value == ConsoleColor.Red) color = ConsoleColor.Black; else { color = value; } }
        }
        ConsoleColor color = ConsoleColor.White;
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
            return Color.ToString() + "Node: " + key;
        }

        public RBNode Destruct()
        {
            if(parent.right == this)
            {
                parent.right = new RBNode(parent);
                return parent.right;
            }
            else
            {
                parent.left = new RBNode(parent);
                return parent.left;
            }
        }

        public bool isRightChild()
        {
            if (parent == null) return false;
            return parent.right == this;
        }
    }
}
