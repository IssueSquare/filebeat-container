#/bin/sh

#Set custom logpath
if [ ! -z "$LOGPATH" ]; then
   sed -i "s#- \/var\/log\/\*\.log#- ${LOGPATH}/*.log#g" /tmp/filebeat.yml
fi

# Set custom elasticsearch endpoint
if [ ! -z "$ELASTICHOST" ]; then
   sed -i "s#hosts: \[\"localhost:9200\"\]#hosts: ["${ELASTICHOST}"]#g" /tmp/filebeat.yml
fi

# Set custom elasticsearch credential index
if [ ! -z "$ELASTICINDEX" ]; then
   sed -i "s#index: "xxxxxxxxxxxxxxxxx"#index: "${ELASTICINDEX}"#g" /tmp/filebeat.yml
fi

#run filebeat
exec filebeat start
