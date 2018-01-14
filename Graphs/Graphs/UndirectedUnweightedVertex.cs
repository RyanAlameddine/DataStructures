using System;
using System.Collections.Generic;
using System.Text;

namespace Graphs
{
    public class UndirectedUnweightedVertex
    {
        public List<UndirectedUnweightedVertex> connections;
        public string name;

        public UndirectedUnweightedVertex(string name)
        {
            this.name = name;
            connections = new List<UndirectedUnweightedVertex>();
        }

        public void Connect(UndirectedUnweightedVertex target)
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
