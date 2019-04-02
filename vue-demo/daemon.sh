export BACKEND="192.168.0.103:8000"
docker build  -t="test/ui" .
docker run -e BACKEND_HOST=$BACKEND -p 8889:8000 test/ui
