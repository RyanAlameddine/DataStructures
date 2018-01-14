using System;
using System.Collections.Generic;
using System.Text;

namespace Graphs
{
    public class Edge
    {
        public Vertex start;
        public Vertex end;
        public float weight;

        public Edge(Vertex start, Vertex end, float weight)
        {
            this.start = start;
            this.end = end;
            this.weight = weight;
        }


    }
}
