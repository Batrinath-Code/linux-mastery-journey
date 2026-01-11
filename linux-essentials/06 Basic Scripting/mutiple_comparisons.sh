#!/bin/bash

#if [ "$1" = "hi" ]; then
#    echo "hello $(whoami)"
#elif [ "$1" = "bye" ]; then
#    echo "ok bye"
#    echo "Shutting down !!!!"
#else
#    echo "Invalid input and exit"
#fi

#!/bin/bash

case "$1" in
hello|hi)
  echo "hello $(whoami)"
  ;;
goodbye)
  echo "nice to have met you"
  echo "I hope to see you again"
  ;;
*)
  echo "I didn't understand that"
esac