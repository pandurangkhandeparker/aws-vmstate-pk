FROM registry.access.redhat.com/ubi8/ubi-minimal
# Labels
LABEL name="aws-vmstate" \
    maintainer="pandurang.com" \
    vendor="pandurang" \
    version="1.0.0" \
    release="1" \
    summary="This service enables state management of AWS cloud vms." \
    description="This service enables state management AWS cloud vms."

# copy code to the build path
COPY vmstate vmstate

CMD ["bash","-c","./vmstate "]
