#echo 'start generate data file'
#python data.py
#echo 'start generate command file'
#sh redis_command_gen.sh > redis_command.txt
#sh redis_command_gen.sh > redis_command_64w.txt
echo 'start insert data'
#time cat redis_command_64w.txt | redis-cli --pipe
time cat /home/tiffanykuo/DGPS/run_script/redis/redis_command_64w_weight.txt | redis-cli --pipe
