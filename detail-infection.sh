FILE_PATH="/tmp/infected"

for CONTAINER_ID in $(docker ps -q);do
    CONTAINER_NAME=$(docker ps | grep $CONTAINER_ID | awk '{ print $2 }')
    docker exec -it $CONTAINER_ID test -f $FILE_PATH && printf "$CONTAINER_NAME\t: infected\n" || printf "$CONTAINER_NAME\t: clean\n"
done
