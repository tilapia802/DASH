vertex_num = 640001
redis_data_file = open('redis_data.txt','w')
for i in range(0,vertex_num+1):
	redis_data_file.write("SET " + str(i) + " 2147483647\n")
