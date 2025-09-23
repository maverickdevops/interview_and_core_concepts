# Java Garbage Collection

## Concepts

Garbage Collection (GC) in Java is the process of automatically identifying and disposing of objects that are no longer needed by a program, freeing up memory resources. Key concepts include:

1. **Heap Memory**: The area of memory where Java objects are stored. The garbage collector manages this memory.
2. **Roots**: Objects that are reachable from the stack, static fields, and active threads. These are the starting points for the GC to identify live objects.
3. **Mark and Sweep**: A common garbage collection algorithm that marks reachable objects and sweeps away unmarked objects.
4. **Generational Garbage Collection**: Divides the heap into generations (Young, Old, and Permanent) to optimize the collection process. Most objects are short-lived and collected in the Young generation.

## Use Cases

1. **Memory Management**: Automatically manages memory allocation and deallocation, reducing memory leaks.
2. **Performance Optimization**: Helps in optimizing application performance by reclaiming memory from unused objects.
3. **Long-running Applications**: Essential for server applications where memory usage can grow over time, ensuring stability and performance.

Understanding garbage collection is crucial for Java developers to write efficient and robust applications.

GC works in 2 simple ways

1. **Mark**: this is where the garbage collector identifies which pieces of memory are in use and which aren’t
2. **Sweep**: this step removes objects identified during the “mark” phase.

Advantages of GC

1. No need for manual memory allocation and deallocation needed, it is all handled by GC
2. No overhead of managing dangling pointers.
3. Memory leak management. (not guranteed, but can take care good portion of it.)

Disadvantages of GC

1. requires more power i.e. CPU to run the GC process itself.
2. Programmers cannot control the CPU time scheduling.
3. Proper GC implementation is needed or it may harm the app or crashing of app.

## GC Implementation

1. **Serial Garbage collector**
2. **Parallel garbage collector**
3. **G1 Garbage collector**
4. **Z Garbage Collector**
