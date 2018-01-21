using System;
using System.Collections.Generic;
using System.Text;

namespace Graphs
{
    public class Graph
    {
        public List<Vertex> verticies = new List<Vertex>();

        //private List<Vertex> visitedVerticies;

        public Graph(List<Vertex> verticies)
        {
            this.verticies = verticies;
        }

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

        public string Dijkstra(Vertex start, Vertex end)
        {
            Dictionary<Vertex, (float, Vertex)> costs = new Dictionary<Vertex, (float, Vertex)>();

            costs.Add(start, (0, null));

            List<Edge> currentConnections = new List<Edge>();

            currentConnections.AddRange(start.connections);

            while (currentConnections.Count > 0)
            {
                Edge lowestEdge = new Edge(null, null, float.MaxValue);
                float lowestCost = float.MaxValue;

                foreach (Edge connection in currentConnections)
                {
                    float cost = connection.weight + costs[connection.start].Item1;
                    if (cost < lowestCost)
                    {
                        if (costs.ContainsKey(connection.end))
                        {
                            if (costs[connection.end].Item1 < cost)
                            {
                                currentConnections.Remove(connection);
                                continue;
                            }
                        }
                        lowestEdge = connection;
                        lowestCost = cost;
                    }
                }

                currentConnections.Remove(lowestEdge);
                costs.Add(lowestEdge.end, (lowestCost, lowestEdge.start));
                currentConnections.AddRange(lowestEdge.end.connections);

                if (lowestEdge.end.name == end.name)
                {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.Append("{ ");
                    Vertex current = lowestEdge.end;

                    while (current != null)
                    {
                        stringBuilder.Append(current.name);
                        stringBuilder.Append(", ");
                        current = costs[current].Item2;
                    }

                    stringBuilder.Remove(stringBuilder.Length - 2, 2);
                    stringBuilder.Append(" }");

                    return stringBuilder.ToString();
                }
            }
            return "";
        }

        public string AStar(Vertex start, Vertex end, Func<Vertex, Vertex, float> heuristic)
        {
            Dictionary<Vertex, (float, Vertex)> costs = new Dictionary<Vertex, (float, Vertex)>();

            costs.Add(start, (0, null));

            List<Edge> currentConnections = new List<Edge>();

            currentConnections.AddRange(start.connections);

            while (currentConnections.Count > 0)
            {
                Edge lowestEdge = new Edge(null, null, float.MaxValue);
                float lowestCost = float.MaxValue;

                foreach(Edge connection in currentConnections)
                {
                    float cost = connection.weight + costs[connection.start].Item1 + heuristic(connection.end, end);
                    if(cost < lowestCost)
                    {
                        if(costs.ContainsKey(connection.end))
                        {
                            if(costs[connection.end].Item1 < cost)
                            {
                                currentConnections.Remove(connection);
                                continue;
                            }
                        }
                        lowestEdge = connection;
                        lowestCost = cost;
                    }
                }

                currentConnections.Remove(lowestEdge);
                costs.Add(lowestEdge.end, (lowestCost, lowestEdge.start));
                currentConnections.AddRange(lowestEdge.end.connections);

                if(lowestEdge.end.name == end.name)
                {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.Append("{ ");
                    Vertex current = lowestEdge.end;

                    while (current != null)
                    {
                        stringBuilder.Append(current.name);
                        stringBuilder.Append(", ");
                        current = costs[current].Item2;
                    }

                    stringBuilder.Remove(stringBuilder.Length - 2, 2);
                    stringBuilder.Append(" }");

                    return stringBuilder.ToString();
                }
            }
            return "";
        }

        public float ManhattanDistance(Vertex start, Vertex target)
        {
            if (start is PositionedVertex pStart)
            {
                if (target is PositionedVertex pTarget)
                {
                    float distance = MathF.Abs(pTarget.position.x - pStart.position.x) + MathF.Abs(pTarget.position.y - pStart.position.y);
                    return distance;
                }
            }
            throw new Exception("Vertex supplied does not contain a position");
        }
    }
}
