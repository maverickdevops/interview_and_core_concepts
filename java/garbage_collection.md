# Java Garbage Collection

## 1. Concepts

Garbage Collection (GC) in Java is the process of automatically identifying and disposing of objects that are no longer needed by a program, freeing up memory resources. Key concepts include:

1. **Heap Memory**: The area of memory where Java objects are stored. The garbage collector manages this memory.
2. **Roots**: Objects that are reachable from the stack, static fields, and active threads. These are the starting points for the GC to identify live objects.
3. **Mark and Sweep**: A common garbage collection algorithm that marks reachable objects and sweeps away unmarked objects.
4. **Generational Garbage Collection**: Divides the heap into generations (Young, Old, and Permanent) to optimize the collection process. Most objects are short-lived and collected in the Young generation.

## 2. Use Cases

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

## 3. GC Implementation

1. **Serial Garbage collector**
2. **Parallel garbage collector**
3. **G1 Garbage collector**
4. **Z Garbage Collector**

## 4. Serial Garbage Collector

1. Works on Single thread. GC Implementation freezes all the application threads when it runs. Probably not a good idea to use it when multi threaded applications.
2. To enable it - java -XX:+UseSerialGC -jar Application.java

## 5. Parallel Garbage Collector

1. Default GC of the JVM from java5 to java8.
2. Uses multiple threads to manage heap space.
3. It uses multiple threads for managing heap space, can also freeze other application threads while performing GC (I doubt if it can do that, the online source I am referring to makes that statement. But my understanding is each process will have a thread and every app will have its process. Hence threads are isolated from each app. if a thread has issue it will bring down a process and hence the app.)
4. We can specify max garbage collection threads and pause time, throughput and footprint (heap size)
5. Can be configured - java -XX:+UseParallelGC -jar Application.java

## 6. G1 Garbage collector

1. Is designed for applications running on multi processor machine with large memory space.
2. It marks first and then tracks.
3. Second phase will be to sweep and clear the memory off. hence the name G1 or the garbage first.
4. can be configured - java -XX:+UseG1GC -jar Application.java

## 7. Z Garbage collector

1. without stopping the execution of application threads for more than 10ms.
2. suitable for low latency app
3. it uses load barriers with colored pointers to perform concurrent operations when the thread is running.
4. Colored pointers is the core of ZGC. It uses some bits (metadata bits) of reference to mark the state of the object.
5. Handles heaps ranging from 8MB to 16TB in size.
6. can be configured - java -XX:+UnlockExperimentalVMOptions -XX:+UseZGC Application.java
