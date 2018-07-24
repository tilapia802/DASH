DGPS_DIR="`pwd`"
DGPS_CLASS_DIR=${DGPS_DIR}/class
DGPS_LIB_DIR=${DGPS_DIR}/lib

java -cp $DGPS_CLASS_DIR:$DGPS_LIB_DIR/amqp-client-4.1.0.jar:$DGPS_LIB_DIR/slf4j-api-1.7.21.jar:$DGPS_LIB_DIR/slf4j-simple-1.7.22.jar:$DGPS_LIB_DIR/json-simple-1.1.1.jar:$DGPS_LIB_DIR/commons-lang3-3.6.jar -Xmx45g DASH.GraphTracker

