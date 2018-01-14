using System;
using System.Collections.Generic;
using System.Text;

namespace Graphs
{
    public class Graph
    {
        public List<Vertex> verticies = new List<Vertex>();

        //private List<Vertex> visitedVerticies;

        public Graph(Dictionary<string, (string, float)[]> verticies)
        {
            foreach(string key in verticies.Keys)
            {
                this.verticies.Add(new Vertex(key));
            }
            foreach (string key in verticies.Keys)
            {
                Vertex vertex = null;
                foreach(Vertex v in this.verticies)
                {
                    if(v.name == key)
                    {
                        vertex = v;
                        break;
                    }
                }
                foreach((string, float) target in verticies[key])
                {
                    Vertex targetVertex = null;
                    foreach(Vertex v in this.verticies)
                    {
                        if(v.name == target.Item1)
                        {
                            targetVertex = v;
                            break;
                        }
                    }
                    vertex.Connect(targetVertex, target.Item2);
                }
            }
        }

        public void AddVertex(Vertex vertex)
        {
            verticies.Add(vertex);
        }

        public void RemoveVertex(Vertex vertex)
        {
            verticies.Remove(vertex);
            foreach(Vertex v in verticies)
            {
                foreach(Edge edge in v.connections)
                {
                    if(edge.end.name == vertex.name)
                    {
                        v.connections.Remove(edge);
                    }
                }
            }
        }

        public bool HasVertex(Vertex vertex)
        {
            return verticies.Contains(vertex);
        }

        /*public void DepthFirstTraversal(Vertex root)
        {
            visitedVerticies = new List<Vertex>();
            dFS(root);
            visitedVerticies = new List<Vertex>();
        }

        private void dFS(Vertex current)
        {
            Console.WriteLine(current.name);
            visitedVerticies.Add(current);
            foreach(Vertex connection in current.connections)
            {
                if (visitedVerticies.Contains(connection)) continue;
                dFS(connection);
            }
        }

        public void BreadthFirstTraversal(Vertex root)
        {
            visitedVerticies = new List<Vertex>();
            Queue<Vertex> current = new Queue<Vertex>();
            current.Enqueue(root);
            Console.WriteLine(current.Peek().name);

            while(current.Count > 0)
            {
                Vertex deQueued = current.Dequeue();
                visitedVerticies.Add(deQueued);

                foreach(Vertex connection in deQueued.connections)
                {
                    if (visitedVerticies.Contains(connection)) continue;
                    visitedVerticies.Add(connection);
                    current.Enqueue(connection);
                    Console.WriteLine(connection.name);
                }
            }

            visitedVerticies = new List<Vertex>();
        }*/

        public Vertex GetVertex(string name)
        {
            foreach(Vertex vertex in verticies)
            {
                if(vertex.name == name)
                {
                    return vertex;
                }
            }
            throw new NullReferenceException("Vertex not found");
        }

        public void Dijkstra(Vertex start)
        {
            Dictionary<Vertex, float> costs = new Dictionary<Vertex, float>();

            costs.Add(start, 0);

            List<Edge> currentConnections = new List<Edge>();
            foreach()
        }
    }
}
