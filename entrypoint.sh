#!/bin/sh
TASKS_DIR=/opt/tasks

for each in $TASKS_DIR/*.sh ; do /bin/sh $each ; done

crond -f -L -
