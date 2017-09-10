using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ListProjects
{

    public class Queue<T>
    {
        SinglyLinkedNode<T> head;

        public void Enqueue(T value)
        {
            SinglyLinkedNode<T> current = head;
            if (current == null)
            {
                head = new SinglyLinkedNode<T>(value);
                return;
            }
            while (true)
            {
                if (current.Next == null)
                {
                    current.Next = new SinglyLinkedNode<T>(value, null);
                    break;
                }
                else
                {
                    current = current.Next;
                }
            }
            return;
        }

        public T Dequeue()
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
            while (current.Next != null)
            {
                x++;
                current = current.Next;
            }
            return x;
        }
    }
}
