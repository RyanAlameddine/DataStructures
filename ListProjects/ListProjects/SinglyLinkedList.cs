using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ListProjects
{
    class SinglyLinkedNode<T>
    {
        public T Item;
        public SinglyLinkedNode<T> Next;

        public SinglyLinkedNode(T Item, SinglyLinkedNode<T> next)
        {
            this.Item = Item;
            Next = next;
        }

        public SinglyLinkedNode(T Item)
        {
            this.Item = Item;
        }

        public void AddAfter(SinglyLinkedNode<T> node)
        {
            Next = node;
        }
    }

    public class SinglyLinkedList<T>
    {
        SinglyLinkedNode<T> head;

        public T AddToEnd(T value)
        {
            SinglyLinkedNode<T> current = head;
            if(current == null)
            {
                head = new SinglyLinkedNode<T>(value);
                return value;
            }
            while (true)
            {
                if(current.Next == null)
                {
                    current.Next = new SinglyLinkedNode<T>(value, null);
                    break;
                }else
                {
                    current = current.Next;
                }
            }
            return value;
        }

        public T AddToFront(T value)
        {
            head = new SinglyLinkedNode<T>(value, head);
            return value;
        }

        public void RemoveFromEnd()
        {
            SinglyLinkedNode<T> current = head;
            if(current.Next == null)
            {
                head = null;
                return;
            }
            while (true)
            {
                if(current.Next.Next == null)
                {
                    current.Next = null;
                    break;
                }
            }
        }

        public void RemoveFromFront()
        {
            head = head.Next;
        }

        public void RemoveAt(int index)
        {
            if (index == 0)
            {
                RemoveFromFront();
                return;
            }
            SinglyLinkedNode<T> current = head;
            for (int i = 0; i < index - 1; i++)
            {
                current = current.Next;
            }
            current.Next = current.Next.Next;
        }

        public bool IsEmpty()
        {
            return head == null;
        }

        public new string ToString()
        {
            if (IsEmpty())
            {
                return "{ } Count = 0 IsEmpty = " + IsEmpty();
            }
            String value = "{";
            SinglyLinkedNode<T> current = head;
            while(current != null)
            {
                value = value + current.Item.ToString() + ", ";
                current = current.Next;
            }
            value = value.Remove(value.Count() - 2, 2);
            value = value + "} Count = " + Count() + " IsEmpty = " + IsEmpty();
            return value;
        }

        public int Count()
        {
            SinglyLinkedNode<T> current = head;
            int x = 0;
            if (current != null)
            {
                x = 1;
            }
            while (current.Next != null)
            {
                x++;
                current = current.Next;
            }
            return x;
        }
    }
}
