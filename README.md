# DASH
## Introduction
DASH is a distributed, dynamic and asynchronized graph processing system disigned for time-evolving graph     
DASH uses:
* Dynamic & runtime graph data management to avoid graph pre-partition and reduce memory usage on worker nodes.
* Workload aware computing task scheduler to have more balanced load.
* Asynchronous computing model and incremental algorithm to have faster algorithm convergence.
## Compile
Make sure you have Java, Redis, RabbitMQ installed in your system and in your path.      
You can change the installtion directory in compile.sh script if you want.
```javascript=
sh run_script/compile.sh
```
By just executing this compile script, you will see compiled classes under class directory. 
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

**Input File Format**         
src (vertex_value) des1 edge_value1 des1 edge_value2               
We provide some sample testcase under sample_testcase directory.             

**Execution commend**                 
Initialize value in Redis database with steps mentioned in run_script/redis/README.md.      
You can find other running scripts under run_script directory.                  

**Result**   
TO get computing result:             
```javascript=                  
sh run_script/runRedis.sh result > result                 
```
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





