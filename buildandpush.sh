docker buildx build --platform linux/amd64,linux/arm64 -t cyberfly/cyberfly_mqtt:latest .
docker push cyberfly/cyberfly_mqtt:latest