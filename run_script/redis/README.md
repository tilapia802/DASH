# Use of Redis script    
## Generate data file (to set value in Redis)
Modify vertex_num and value to fit your needs.         
```javascript=               
python data.py       
```           
It will generate redis_data.txt for later use.    
## Generate Redis command file from data file you just generated.           
```javascript=          
sh redis_command_gen.sh > redis_command.txt     
```              
It will generate command to redis_command.txt.                
## Set up value in Redis with Redis command file                               
```javascript=
time cat redis_command_wiki.txt | redis-cli --pipe            
```
        
