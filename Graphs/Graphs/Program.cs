using System;
using System.Collections.Generic;

namespace Graphs
{
    class Program
    {
        static void Main(string[] args)
        {
            Graph graph = new Graph(new Dictionary<string, (string, float)[]>()
            {
                ["a"] = new[] { ("b", 2f) },
                ["b"] = new(string, float)[] { },
                ["c"] = new[] { ("a", 6f), ("f", 3f) },
                ["d"] = new[] { ("e", 5f) },
                ["e"] = new(string, float)[] { },
                ["f"] = new[] { ("d", 7f), ("e", 14f) },
            });

            

            Console.ReadKey();
        }
    }
}
