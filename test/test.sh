# Retry loop to wait for Nginx to be available
until curl -s http://<live-server-ip>:80; do
  echo "Waiting for Nginx to be available..."
  sleep 5
done
