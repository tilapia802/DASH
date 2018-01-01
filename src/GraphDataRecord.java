package dgps;
import java.io.*;
public class GraphDataRecord{
	private int worker_num;
	int total_vertex_num;
	private int worker_load [];
	private int worker_vertex_data [][];
	private dgps.ReadConf readconf;
	public GraphDataRecord(){
		try{
			readconf = new dgps.ReadConf();
		}
		catch (FileNotFoundException ex){
			System.out.println(".conf file not found");
		}
		worker_num = readconf.getWorkerCount();
		total_vertex_num = readconf.getVertexNumber();
	}
	public void initData(){
		worker_load = new int [worker_num+1];
		worker_vertex_data = new int [worker_num+1][total_vertex_num+1];
	}
	public int getWorkerLoad(int workerID){
		//lock?
		return worker_load[workerID];
	}
	public void setWorkerLoad(int workerID, int load){
		worker_load[workerID] = load;
	}
	public void addOneWorkerLoad(int workerID){
		worker_load[workerID] = worker_load[workerID] + 1;
	}
	public int hasData(int workerID, int vertexID){
		/*if (worker_vertex_data[workerID][vertexID] == 1)
			return true;
		else
			return false;*/
		return worker_vertex_data[workerID][vertexID];
	}
	public void setData(int workerID, int vertexID){
		worker_vertex_data[workerID][vertexID] = 1;
	} 
}