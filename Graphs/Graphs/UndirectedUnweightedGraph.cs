using System;
using System.Collections.Generic;
using System.Text;

namespace Graphs
{
    public class UndirectedUnweightedGraph
    {
        public List<UndirectedUnweightedVertex> verticies = new List<UndirectedUnweightedVertex>();

        private List<UndirectedUnweightedVertex> visitedVerticies;

        public UndirectedUnweightedGraph(Dictionary<string, string[]> verticies)
        {
            foreach(string key in verticies.Keys)
            {
                this.verticies.Add(new UndirectedUnweightedVertex(key));
            }
            foreach (string key in verticies.Keys)
            {
                UndirectedUnweightedVertex vertex = null;
                foreach(UndirectedUnweightedVertex v in this.verticies)
                {
                    if(v.name == key)
                    {
                        vertex = v;
                        break;
                    }
                }
                foreach(string target in verticies[key])
                {
                    UndirectedUnweightedVertex targetVertex = null;
                    foreach(UndirectedUnweightedVertex v in this.verticies)
                    {
                        if(v.name == target)
                        {
                            targetVertex = v;
                            break;
                        }
                    }
                    vertex.Connect(targetVertex);
                }
            }
        }

        public void AddVertex(UndirectedUnweightedVertex vertex)
        {
            verticies.Add(vertex);
        }

        public void RemoveVertex(UndirectedUnweightedVertex vertex)
        {
            verticies.Remove(vertex);
            foreach(UndirectedUnweightedVertex connection in vertex.connections)
            {
                connection.connections.Remove(vertex);
            }
        }

        public bool HasVertex(UndirectedUnweightedVertex vertex)
        {
            return verticies.Contains(vertex);
        }

        public void DepthFirstTraversal(UndirectedUnweightedVertex root)
        {
            visitedVerticies = new List<UndirectedUnweightedVertex>();
            dFS(root);
            visitedVerticies = new List<UndirectedUnweightedVertex>();
        }

        private void dFS(UndirectedUnweightedVertex current)
        {
            Console.WriteLine(current.name);
            visitedVerticies.Add(current);
            foreach(UndirectedUnweightedVertex connection in current.connections)
            {
                if (visitedVerticies.Contains(connection)) continue;
                dFS(connection);
            }
        }

        public void BreadthFirstTraversal(UndirectedUnweightedVertex root)
        {
            visitedVerticies = new List<UndirectedUnweightedVertex>();
            Queue<UndirectedUnweightedVertex> current = new Queue<UndirectedUnweightedVertex>();
            current.Enqueue(root);
            Console.WriteLine(current.Peek().name);

            while(current.Count > 0)
            {
                UndirectedUnweightedVertex deQueued = current.Dequeue();
                visitedVerticies.Add(deQueued);

                foreach(UndirectedUnweightedVertex connection in deQueued.connections)
                {
                    if (visitedVerticies.Contains(connection)) continue;
                    visitedVerticies.Add(connection);
                    current.Enqueue(connection);
                    Console.WriteLine(connection.name);
                }
            }

            visitedVerticies = new List<UndirectedUnweightedVertex>();
        }

        public UndirectedUnweightedVertex GetVertex(string name)
        {
            foreach(UndirectedUnweightedVertex vertex in verticies)
            {
                if(vertex.name == name)
                {
                    return vertex;
                }
            }
            throw new NullReferenceException("Vertex not found");
        }
    }
}
