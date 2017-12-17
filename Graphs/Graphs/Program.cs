using System;
using System.Collections.Generic;

namespace Graphs
{
    class Program
    {
        static void Main(string[] args)
        {
            UndirectedUnweightedGraph graph = new UndirectedUnweightedGraph(new Dictionary<string, string[]>(){
                ["0"] = new[] { "3", "4" },
                ["1"] = new[] { "3", "5" },
                ["2"] = new[] { "4" },
                ["3"] = new[] { "0", "1" },
                ["4"] = new[] { "0", "2", "7" },
                ["5"] = new[] { "1", "6", "7" },
                ["6"] = new[] { "5", "7" },
                ["7"] = new[] { "4", "5", "6" },
            });

            graph.BreadthFirstTraversal(graph.GetVertex("0"));

            

            Console.ReadKey();
        }
    }
}
