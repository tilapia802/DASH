DGPS_DIR="`pwd`"
DGPS_SRC_DIR=${DGPS_DIR}/src
DGPS_CLASS_DIR=${DGPS_DIR}/class
DGPS_LIB_DIR=${DGPS_DIR}/lib

javac -cp $DGPS_LIB_DIR/amqp-client-4.1.0.jar:$DGPS_LIB_DIR/jedis-2.9.0.jar:$DGPS_LIB_DIR/json-simple-1.1.1.jar:$DGPS_LIB_DIR/commons-lang3-3.6.jar $DGPS_SRC_DIR/SendTask.java $DGPS_SRC_DIR/Scheduler.java $DGPS_SRC_DIR/Worker.java $DGPS_SRC_DIR/RunRedis.java $DGPS_SRC_DIR/GraphTracker.java $DGPS_SRC_DIR/Logger.java $DGPS_SRC_DIR/ReadConf.java $DGPS_SRC_DIR/MessageQueue.java $DGPS_SRC_DIR/GraphDataRecord.java -d ${DGPS_CLASS_DIR}
