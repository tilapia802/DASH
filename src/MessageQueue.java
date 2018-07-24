package DASH;
import java.util.concurrent.ConcurrentLinkedQueue;

public class MessageQueue{
	private ConcurrentLinkedQueue<String> queue; 
	public MessageQueue(){
		this.queue = new ConcurrentLinkedQueue<String>();
	}
	public int getQueueSize(){
		return this.queue.size();
	}
	public void pushToQueue(String message){
		synchronized(queue){
			this.queue.offer(message);
		}
	}
	public String popFromQueue(){
		synchronized(queue){
    		if(!queue.isEmpty()){
       			return this.queue.poll();
    		}
			else
				return "NULL";
		}
	}
}
