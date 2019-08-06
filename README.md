# Kafka Logs Explorer

As a support person or a developer helping somebody debug a Kafka cluster, you may get Kafka logs from somewhere or somebody and want to analyze what happened.
Instead of grepping across multiple files and thousands of lines or code, wouldn't it be nice to just have a tool to put it all together into Elasticsearch
and have a Kibana instance to search through it or slice and dice that data up in visualizations?

This setup is one step towards that that cuts down on the setup of all that.


## Getting Started

### Prerequisites

What things you need to install the software and how to install them

1. Docker for desktop

### Installing

A step by step series of examples that tell you how to get a development env running

1. Clone this repo
```
git clone ...
```

2. Remove the log files from the input folder
```
rm input/*
```

3. Copy your log files into the input folder
```
cp <path to log files>/*.log input/
```

4. Run the docker-compose with setup.yml
```
docker-compose -f setup.yml up
```

5. Run the docker-compose up
```
docker-compose up
```

## Built With

* Filebeat (with the Kafka module)
* Elasticsearch
* Kibana
* Docker


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

The Elastic stack repo

