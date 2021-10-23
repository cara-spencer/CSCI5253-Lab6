
|  Method 	        | Local  	| Same-Zone  	|  Different Region |
|---	            |---	    |---	        |---	            |
|   REST add	    | 2.421     | 2.656         | 277.050           |
|   gRPC add	    | 0.646     | 0.801         | 140.847           |
|   REST rawimg	    | 4.408 	| 8.427         | 1134.680          |
|   gRPC rawimg	    | 6.082     | 6.748         | 188.838  	        |
|   REST dotproduct	| 3.082     | 3.383  	    | 278.523           |
|   gRPC dotproduct	| 1.127     | 1.422         | 141.488  	        |
|   REST jsonimg	| 69.482    | 78.809        | 1310.346          |
|   gRPC jsonimg	| 26.156    | 28.507        | 222.029           |
|   PING            | 0.049     | 0.386         | 136.795           |

Generally, gRPC spend much less time than REST in almost all situation, except local raw image case.
1. For test in different region, gRPC clearly saves the time to make TCP connection compared to REST when  data is small. And it saves even more time than REST when data is large, this may because REST need to make several connection when translate data. 
2. For same-zone and local situation, gRPC only cost about 1/3 time of REST. Considering the relatively small ping, the more TCP connection may not be the reason. But for raw image, REST shows better performance than other method, and even better than gRPC in locathost. I think REST may use some different strategy for this case.

You should measure the basic latency  using the `ping` command - this can be construed to be the latency without any RPC or python overhead.

You should examine your results and provide a short paragraph with your observations of the performance difference between REST and gRPC. You should explicitly comment on the role that network latency plays -- it's useful to know that REST makes a new TCP connection for each query while gRPC makes a single TCP connection that is used for all the queries.