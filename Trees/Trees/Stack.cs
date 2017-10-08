using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Trees
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

    public class Stack<T>
    {
        SinglyLinkedNode<T> head;

        public void Push(T value)
        {
            head = new SinglyLinkedNode<T>(value, head);
        }

        public T Pop()
        {
            T item;
            try
            {
                item = head.Item;
            }
            catch (NullReferenceException e)
            {
                throw (new Exception("No head to return"));
            }
            head = head.Next;

            return item;
        }

        public T Peek()
        {
            return head.Item;
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
            while (current != null)
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
            else
            {
                return 0;
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
