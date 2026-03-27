#!/bin/bash

FILE="tasks.txt"

case "$1" in
  add)
    echo "$(date): $2" >> $FILE
    echo "Task added with timestamp!"	
    echo "$2" >> $FILE
    echo "Task added!"
    ;;
  
  list)
    nl -w2 -s'. ' $FILE
    ;;
  
  done)
    sed -i "${2}s/^/[DONE] /" $FILE
    echo "Task marked as done!"
    ;;
  
  delete)
    sed -i "${2}d" $FILE
    echo "Task deleted!"
    ;;
  
  *)
    echo "Usage:"
    echo "./task.sh add \"task\""
    echo "./task.sh list"
    echo "./task.sh done <number>"
    echo "./task.sh delete <number>"
    ;;
esac
