#include <boost/graph/random.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/random/random_number_generator.hpp>
#include <boost/random/random_device.hpp>
#include <boost/random/mersenne_twister.hpp>
#include <boost/graph/graphviz.hpp>
#include <fstream>
using namespace boost;
int main()
{
    typedef adjacency_list<vecS, vecS, directedS, std::pair<int, int> > Graph;
    typedef typename graph_traits<Graph>::vertices_size_type VertexSize;
    typedef typename graph_traits<Graph>::edges_size_type EdgeSize;
    typedef typename graph_traits<Graph>::vertex_iterator VertexIter;
    typedef typename graph_traits<Graph>::edge_iterator EdgeIter;
    VertexSize vsize = 56;
    EdgeSize esize = 1000;
    boost::mt19937 engine(1234);
    //boost::random::random_number_generator<boost::mt19937> generator(engine);
    std::string table("abcdef012345");

    std::vector<std::string> labels(vsize);
    std::string tmp;
    boost::random::random_device dev;
    boost::random::uniform_int_distribution<> dist(0, table.size() - 1); 
    for (VertexSize s = 0; s < vsize; s++ ) {
        for (int i = 0; i < 4; i++) {
            tmp.push_back(table[dist(dev)]);
        }
        labels.push_back(tmp);
        tmp.clear(); 
        
    }
    Graph g;
    generate_random_graph(g, vsize, esize, engine, false, false);
    VertexIter vit, vie;
    for (boost::tie(vit, vie) = vertices(g); vit != vie; ++vit) {
        std::cout << *vit << std::endl;
    }
    EdgeIter eit, eie; 
    for (boost::tie(eit, eie) = edges(g); eit != eie; ++eit) {
        std::cout << *eit << std::endl;
    }
    std::ofstream file("rand.dot");
    //write_graphviz(file, g, boost::make_label_writer(labels)); 
}

