# DASH
## Introduction
DASH is a distributed, dynamic and asynchronized graph processing system disigned for time-evolving graph     
DASH uses:
* Dynamic & runtime graph data management to avoid graph pre-partition and reduce memory usage on worker nodes.
* Workload aware computing task scheduler to have more balanced load.
* Asynchronous computing model and incremental algorithm to have faster algorithm convergence.
## Compile
Make sure you have java installed in your system.      
You can change the installtion directory in compile.sh script.
```javascript=
sh run_script/compile.sh
```
## Run
**Configuration**
```javascript=
vim DASH.conf
```
1. MasterHostname : Hostname of your master node in the system.
2. WorkerNumber : Number of worker in the system.
3. WorkerHostnames : Hostname of all the worker nodes in the system, seperated with ','. Ex:"Worker1,Worker2".
4. InputFilePath : Path of input graph file.
5. LogDirectory : Directory of log file.
6. BatchSize : Size of message in a batch, 1600 is used as default.
7. DelayTime : Time for delay of message sending (ms), 50 is used as default.
## Programming API
We provide API for programmer to implement their algorithms.
Scheduler
```javascript=
getTask()
parseTask(String task)
schedulerPolicy(int vertexID)
sendTask(String task, int workerID)
sendSubgraphRequest(String request, int workerID)
```
Graph Tracker
```javascript=
getRequest()
parseRequest(String request)
getSubgraph(int vertexID)
sendGraphData(String subgraph, int workerID)
```
Worker
```javascript=
getTask()
parseTask(String task)
compute()
getValue(String vertexID)
setValue(String vertexID, String value)
getOutNeighbor(String vertexID)
sendTask(String task, String src, String des)
broadcast(String task, String src)
```





