
aws cloudformation deploy --template-file ../microservicio.yaml --stack-name CCS-dev-oauth --capabilities CAPABILITY_NAMED_IAM --profile pragma --parameter-overrides \
    ProjectName=CCS \
    EnvType=dev \
    Domain=dev.ccs.com \
    MicroserviceName=oauth \
    MemoryReservation=200 \
    MicroservicePort=4400 \
    MicroservicePriority=1 \
    Healthcheck=healthcheck \
    MinContainers=1 MaxContainers=1
 
 