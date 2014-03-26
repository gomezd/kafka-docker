#!/bin/bash
docker run -link zookeeper:zk -i -t gomezd/kafka /bin/bash

