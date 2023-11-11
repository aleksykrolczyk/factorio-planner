# About

A pretty simple program that calculates how many assemblers and how much basic resources is required to achieve given throughput of a given resource.
Example:
```swift
let planner = Planner(ingredient: .LogisticSciencePack, productionPerSecond: 1, assembler: .mk1)
...
```
Output:
```
Logistic Science Pack: 12.0 assemblers
    Transport belt: 0.5 assemblers
        Iron gear wheel: 0.5 assemblers
            Iron plate: 1.0/s
        Iron plate: 0.5/s
    Inserter: 1.0 assemblers
        Iron gear wheel: 1.0 assemblers
            Iron plate: 2.0/s
        Electronic circuit: 1.0 assemblers
            Copper cable: 1.5 assemblers
                Copper plate: 1.5/s
            Iron plate: 1.0/s
        Iron plate: 1.0/s

Basic ingredients:
Iron plate: 5.5/s
Copper plate: 1.5/s
```
