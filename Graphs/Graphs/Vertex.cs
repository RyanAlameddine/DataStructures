using System;
using System.Collections.Generic;
using System.Text;

namespace Graphs
{
    public class Vertex
    {
        public List<Edge> connections;
        public string name;

        public Vertex(string name)
        {
            this.name = name;
            connections = new List<Edge>();
        }

        public void Connect(Vertex target, float weight)
        {
            foreach(Edge connection in connections)
            {
                if (connection.end == target) return;
            }
            connections.Add(new Edge(this, target, weight));
        }

        public override string ToString()
        {
            StringBuilder builder = new StringBuilder();
            foreach(var item in connections)
            {
                builder.Append(item.end.name);
                builder.Append(":");
                builder.Append(item.weight.ToString());
                builder.Append(", ");
            }
            builder.Remove(builder.Length - 2, 2);
            return $"Vertex {name}: {{{builder.ToString()}}}";
        }
    }
}
