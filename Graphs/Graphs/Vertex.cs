using System;
using System.Collections.Generic;
using System.Text;

namespace Graphs
{
    public class Vertex
    {
        public List<Vertex> connections;
        public string name;

        public Vertex(string name)
        {
            this.name = name;
            connections = new List<Vertex>();
        }

        public void Connect(Vertex target)
        {
            if (connections.Contains(target)) return;
            connections.Add(target);
            target.connections.Add(this);
        }

        public override string ToString()
        {
            StringBuilder builder = new StringBuilder();
            foreach(var item in connections)
            {
                builder.AppendLine(item.name);
            }
           
            return $"Vertex {name}: {{{builder.ToString()}}}";
        }
    }
}
