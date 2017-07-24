using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ListProjects
{
    class DoublyLinkedNode<T>
    {
        public T Item;
        public DoublyLinkedNode<T> Next;
        public DoublyLinkedNode<T> Before;

        public DoublyLinkedNode(T Item, DoublyLinkedNode<T> next, DoublyLinkedNode<T> before)
        {
            this.Item = Item;
            Next = next;
            Before = before;
        }

        public DoublyLinkedNode(T Item)
        {
            this.Item = Item;
        }

        public void AddAfter(DoublyLinkedNode<T> node)
        {
            Next = node;
            Next.Before = this;
        }
    }

    public class DoublyLinkedList<T>
    {
        DoublyLinkedNode<T> head;

        public T AddToEnd(T value)
        {
            DoublyLinkedNode<T> current = head;
            if(current == null)
            {
                head = new DoublyLinkedNode<T>(value);
                return value;
            }
            while (true)
            {
                if(current.Next == null)
                {
                    current.Next = new DoublyLinkedNode<T>(value, null, current);
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
            head = new DoublyLinkedNode<T>(value, head, null);
            if (head.Next != null)
                head.Next.Before = head;
            return value;
        }

        public void RemoveFromEnd()
        {
            DoublyLinkedNode<T> current = head;
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
            if(head != null && head.Next != null)
                head.Next.Before = null;
        }

        public void RemoveAt(int index)
        {
            if (index == 0)
            {
                RemoveFromFront();
                return;
            }
            DoublyLinkedNode<T> current = head;
            for (int i = 0; i < index - 1; i++)
            {
                current = current.Next;
            }
            current.Next = current.Next.Next;
            current.Next.Before = current;
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
            DoublyLinkedNode<T> current = head;
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
            DoublyLinkedNode<T> current = head;
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
