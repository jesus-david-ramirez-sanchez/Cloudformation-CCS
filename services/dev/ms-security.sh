
aws cloudformation deploy --template-file ../microservicio.yaml --stack-name CCS-dev-security --capabilities CAPABILITY_NAMED_IAM --profile pragma --parameter-overrides \
    ProjectName=CCS \
    EnvType=dev \
    Domain=dev.ccs.com \
    MicroserviceName=security \
    MemoryReservation=200 \
    MicroservicePort=4800 \
    MicroservicePriority=5 \
    Healthcheck=healthcheck \
    MinContainers=1 MaxContainers=1