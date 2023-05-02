
aws cloudformation deploy --template-file ../microservicio.yaml --stack-name CCS-dev-users --capabilities CAPABILITY_NAMED_IAM --profile pragma --parameter-overrides \
    ProjectName=CCS \
    EnvType=dev \
    Domain=dev.ccs.com \
    MicroserviceName=users \
    MemoryReservation=200 \
    MicroservicePort=5000 \
    MicroservicePriority=9 \
    Healthcheck=healthcheck \
    MinContainers=1 MaxContainers=1