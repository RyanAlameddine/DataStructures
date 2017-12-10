using System;
using System.Collections.Generic;
using System.Text;

namespace Graphs
{
    public class UndirectedGraph
    {
        public List<Vertex> verticies;

        public UndirectedGraph(List<Vertex> initialVerticies)
        {
            verticies = initialVerticies;
        }

        public void AddVertex(Vertex vertex)
        {
            verticies.Add(vertex);
        }

        public void RemoveVertex(Vertex vertex)
        {
            verticies.Remove(vertex);
            foreach(Vertex connection in vertex.connections)
            {
                connection.connections.Remove(vertex);
            }
        }

        public bool HasVertex(Vertex vertex)
        {
            return verticies.Contains(vertex);
        }

        public void DepthFirstTraversal(Vertex root)
        {
            Stack<Vertex> current = new Stack<Vertex>();
            List<Vertex> visited = new List<Vertex>();
            current.Push(root);
            visited.Add(root);


            List<Vertex> visiting;
            while(current.Count > 0)
            {
                visiting = current.Peek().connections;
                if(visiting.Count > 0)
                {
                    visited.Add(visiting[0]);

                }
                else
                {

                }
            }
            
        }

        public void BreadthFirstTraversal(Vertex root)
        {

        }
    }
}
