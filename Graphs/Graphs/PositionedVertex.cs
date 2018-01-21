using System;
using System.Collections.Generic;
using System.Text;

namespace Graphs
{
    public class PositionedVertex : Vertex
    {
        public Point position;

        public PositionedVertex(string name, Point position) : base(name)
        {
            this.position = position;
        }
    }
}
