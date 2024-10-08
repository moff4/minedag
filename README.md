# Mine DAG
Mine realisation of DAG


# Install

```bash
pip install minedag
```

# Usage

Initialize

```python
from minedag import MineDag

# create structure
dag = MineDag()

# add nodes
dag.add_node(1)
dag.add_node(2)
dag.add_node(3)
dag.add_node(4)

# add edges
dag.add_edge(1, 2, weight=1)
dag.add_edge(1, 3, weight=2)
dag.add_edge(2, 4, weight=3)
dag.add_edge(3, 4, weight=4)

```

Use methods (not all presented here, for more read the sources):
```python

dag.get_all_roots()  # {1}
dag.get_leaves()  # {4}

dag.get_all_srcs(2)  # {1}
dag.get_all_dsts(2)  # {4}

dag.get_layer_iterations({1}) # [{1}, {2, 3}, {4}]

dag.find_longest_way_to_any_leaf(1)  # 4, [2, 4] - (weight, path) 
```
