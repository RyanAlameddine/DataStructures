using System;
using System.Collections.Generic;

namespace Graphs
{
    class Program
    {
        static void Main(string[] args)
        {
            //Graph graph = new Graph(new Dictionary<string, (string, float)[]>()
            //{
            //    ["a"] = new[] { ("b", 2f) },
            //    ["b"] = new(string, float)[] { },
            //    ["c"] = new[] { ("a", 6f), ("f", 3f) },
            //    ["d"] = new[] { ("e", 5f) },
            //    ["e"] = new(string, float)[] { },
            //    ["f"] = new[] { ("d", 7f), ("e", 14f) },
            //});


            List<Vertex> verticies = new List<Vertex>();

            for(int x = 0; x <= 20; x++)
            {
                for(int y = 0; y <= 20; y++)
                {
                    PositionedVertex pVertex = new PositionedVertex($"{x}:{y}", new Point(x, y));
                    //ADD VERTEX CONNECTIONS
                    verticies.Add(pVertex);
                }
            }

            Graph graph = new Graph(verticies);
            
            Vertex start = graph.GetVertex("00.05");
            Vertex end = graph.GetVertex("20.08");

            Console.WriteLine(graph.AStar(start, end, graph.ManhattanDistance));

            Console.ReadKey();
        }

        
    }
}
