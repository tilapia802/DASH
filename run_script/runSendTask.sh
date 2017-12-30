DGPS_DIR="`pwd`"
DGPS_CLASS_DIR=${DGPS_DIR}/class
DGPS_LIB_DIR=${DGPS_DIR}/lib

java -cp $DGPS_CLASS_DIR:$DGPS_LIB_DIR/amqp-client-4.1.0.jar:$DGPS_LIB_DIR/slf4j-api-1.7.21.jar:$DGPS_LIB_DIR/slf4j-simple-1.7.22.jar:$DGPS_LIB_DIR/jedis-2.9.0.jar:$DGPS_LIB_DIR/commons-pool2-2.4.2.jar dgps.SendTask

