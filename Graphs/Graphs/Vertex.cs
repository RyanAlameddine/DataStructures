using System;
using System.Collections.Generic;
using System.Text;

namespace Graphs
{
    public class Vertex
    {
        public List<Vertex> connections;

        public void Connect(Vertex target)
        {
            connections.Add(target);
            target.connections.Add(this);
        }
    }
}
