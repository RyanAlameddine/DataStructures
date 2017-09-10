using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ListProjects
{
    public class CircularlyDoublyLinkedList<T>
    {
        DoublyLinkedNode<T> head;

        public T AddToEnd(T value)
        {
            DoublyLinkedNode<T> current = head;
            if(current == null)
            {
                head = new DoublyLinkedNode<T>(value);
                head.Next = head;
                head.Before = head;
                return value;
            }
            while (true)
            {
                if(current.Next == head)
                {
                    current.Next = new DoublyLinkedNode<T>(value, head, current);
                    current.Next.Next.Before = current.Next;
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
            var last = head;
            if (last != null)
            {
                while (last.Next != head)
                {
                    last = last.Next;
                }
            }

            head = new DoublyLinkedNode<T>(value, head, last);
            if (head.Next == null) last = head;
            last.Next = head;
            if (head.Next != null)
                head.Next.Before = head;
            return value;
        }

        public void RemoveFromEnd()
        {
            DoublyLinkedNode<T> current = head;
            if(current.Next == head)
            {
                head = null;
                return;
            }
            while (true)
            {
                if(current.Next.Next == head)
                {
                    current.Next = head;
                    break;
                }
            }
        }

        public void RemoveFromFront()
        {
            if (head.Next == head)
            {
                head = null;
                return;
            }
            head = head.Next;
            DoublyLinkedNode<T> current = head;
            if (head != null && head.Next != null)
            {
                while (current.Next.Next != head)
                {
                    current = current.Next;
                }
                current.Next = head;
                head.Before = current;
            }
        }

        public void RemoveAt(int index)
        {
            if (index == 0)
            {
                RemoveFromFront();
                return;
            }
            if(index == Count() - 1)
            {
                RemoveFromEnd();
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

        public void AddAt(int index, T value)
        {
            if (index == 0)
            {
                AddToFront(value);
                return;
            }
            if (index == Count())
            {
                AddToEnd(value);
                return;
            }
            DoublyLinkedNode<T> current = head;
            for (int i = 0; i < index; i++)
            {
                current = current.Next;
            }
            DoublyLinkedNode<T> newobject = new DoublyLinkedNode<T>(value, current, current.Before);
            current.Before.Next = newobject;
            current.Before = newobject;
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
            value = value + current.Item.ToString() + ", ";
            current = current.Next;
            while (current != head)
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
            while (current.Next != head)
            {
                x++;
                current = current.Next;
            }
            return x;
        }
    }
}
