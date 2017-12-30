#vertex_num = 41652230
vertex_num = 640001
redis_data_file = open('redis_data.txt','w')
#for i in range(0,vertex_num+1):
	#redis_data_file.write("SET " + str(i) + " 200000\n")
with open("/home/tiffanykuo/gpsLogs/wiki_weight_out") as f:
    content = f.readlines()

for line in content:
    redis_data_file.write("SET " + line)
