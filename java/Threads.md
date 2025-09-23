# Threads Lifecycle in Java

In Java, a thread can be in one of the following states:

1. **New**: A thread that has been created but not yet started.
2. **Runnable**: A thread that is ready to run and waiting for CPU time.
3. **Blocked**: A thread that is blocked waiting for a monitor lock.
4. **Waiting**: A thread that is waiting indefinitely for another thread to perform a particular action.
5. **Timed Waiting**: A thread that is waiting for another thread to perform an action for up to a specified waiting time.
6. **Terminated**: A thread that has exited.

# Difference between Process and Thread

| Feature       | Process                                            | Thread                                                           |
| ------------- | -------------------------------------------------- | ---------------------------------------------------------------- |
| Definition    | A process is an independent program in execution.  | A thread is a lightweight process that can run within a process. |
| Memory        | Each process has its own memory space.             | Threads share the same memory space of the process.              |
| Overhead      | Higher overhead due to separate memory allocation. | Lower overhead as threads share resources.                       |
| Communication | Inter-process communication (IPC) is required.     | Threads can communicate directly since they share memory.        |
| Creation      | Creating a process is more time-consuming.         | Creating a thread is faster and more efficient.                  |

Visual representation is here

![Alt text](images/java/processVSthreads.png)
