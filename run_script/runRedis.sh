DGPS_DIR="`pwd`"
DGPS_CLASS_DIR=${DGPS_DIR}/class
DGPS_LIB_DIR=${DGPS_DIR}/lib

java -cp $DGPS_CLASS_DIR:$DGPS_LIB_DIR/jedis-2.9.0.jar:$DGPS_LIB_DIR/json-simple-1.1.1.jar:$DGPS_LIB_DIR/commons-pool2-2.4.2.jar dgps.RunRedis $1

