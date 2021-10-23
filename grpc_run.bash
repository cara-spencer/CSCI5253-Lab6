remoteServerIP=''

python grpc-client.py localhost add 1000
python grpc-client.py localhost rawimage 1000
python grpc-client.py localhost dotproduct 1000
python grpc-client.py localhost jsonimage 1000

python grpc-client.py $remoteServerIP add 1000
python grpc-client.py $remoteServerIP rawimage 1000
python grpc-client.py $remoteServerIP dotproduct 1000
python grpc-client.py $remoteServerIP jsonimage 1000

