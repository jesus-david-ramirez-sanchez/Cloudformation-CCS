
aws cloudformation deploy --template-file ../microservicio.yaml --stack-name CCS-dev-salesModule --capabilities CAPABILITY_NAMED_IAM --profile pragma --parameter-overrides \
    ProjectName=CCS \
    EnvType=dev \
    Domain=dev.ccs.com \
    MicroserviceName=salesModule \
    MemoryReservation=200 \
    MicroservicePort=4600 \
    MicroservicePriority=3 \
    Healthcheck=healthcheck \
    MinContainers=1 MaxContainers=1