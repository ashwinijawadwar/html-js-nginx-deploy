until curl -s http://54.166.141.84:80; do
    echo "Waiting for Nginx to be available..."
    sleep 5
done

