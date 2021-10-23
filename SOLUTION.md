
|  Method 	        | Local  	| Same-Zone  	|  Different Region |
|---	            |---	    |---	        |---	            |
|   REST add	    | 2.421     |   	        |  	                |
|   gRPC add	    | 0.646     |   	        |    	            |
|   REST rawimg	    | 4.408 	|   	        |   	            |
|   gRPC rawimg	    | 6.082     |   	        |   	            |
|   REST dotproduct	| 3.082     |   	        |  	                |
|   gRPC dotproduct	| 1.127     |   	        |    	            |
|   REST jsonimg	| 69.482    |   	        |   	            |
|   gRPC jsonimg	| 26.156    |   	        |   	            |
|   PING            | 0.049     |               |                   |

You should measure the basic latency  using the `ping` command - this can be construed to be the latency without any RPC or python overhead.

You should examine your results and provide a short paragraph with your observations of the performance difference between REST and gRPC. You should explicitly comment on the role that network latency plays -- it's useful to know that REST makes a new TCP connection for each query while gRPC makes a single TCP connection that is used for all the queries.