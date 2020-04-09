FROM ibmcom/websphere-liberty:kernel-java8-ibmjava-ubi
#FROM ibmcom/websphere-liberty:webProfile8-ubi-min

COPY --chown=1001:0  target/GetStartedJava.war /config/apps/
COPY --chown=1001:0  server.xml /config/
RUN configure.sh

## Running the container locally
# mvn clean install
# docker build -t getstartedjava:latest .
# docker build -t getstartedjava:webProfile8 .

# docker run -d --name myjavacontainer getstartedjava
# docker run -p 9080:9080 -e MONGO_URL=mongodb://gasp53:27017 --name myjavacontainer getstartedjava
# Visit http://localhost:9080/GetStartedJava/

# docker run --name getstarted-mongo -d -p 27017:27017 mongo


## Push container to IBM Cloud
# docker tag getstartedjava:latest registry.ng.bluemix.net/<my_namespace>/getstartedjava:latest
# docker push registry.ng.bluemix.net/<my_namespace>/getstartedjava:latest
# ibmcloud ic images # Verify new image
