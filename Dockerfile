FROM ubuntu
ENTRYPOINT ["/bin/sh", "-c", "echo Container started; trap 'exit 0' 15; while sleep 1 & wait $!; do :; done"]