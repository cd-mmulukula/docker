#!/bin/sh

export MAIN_CLASS=${MAIN_CLASS:-com.vhub.sts.APIServer}
export GC_FLAGS=" -verbose:gc -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -XX:+PrintGCCause -Xloggc:gc.log"
export LOG_CONFIG=" -Dlog4j.configuration=file:./log4j.properties "
JVM_ARGS="${GC_FLAGS} ${LOG_CONFIG} ${EXTRA_JVM_ARGS} "

java -cp /application.jar:/ \
  ${JVM_ARGS} ${MAIN_CLASS} ${CONFIG_FILE}