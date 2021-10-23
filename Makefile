#
# Generate gRPC 
#

grpc:
	protoc --python_out=. lab6.proto
	python -m grpc_tools.protoc --proto_path=./ --python_out=./ --grpc_python_out=./ lab6.proto

# tools:
# 	pip install grpcio grpcio_tools

clean::
	-rm -f lab6_pb2.py lab6_pb2_grpc.py