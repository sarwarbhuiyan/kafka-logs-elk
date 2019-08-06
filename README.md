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

### Exploring the logs in Kafka
The above steps will create the necessary setup to:
1. Ingest the logs in input/ to the Elasticsearch instance
2. Setup the ingest node pipeline to parse the Kafka logs correctly (timestamp, level, component, etc)
3. Setup Kibana with the index patterns and setup a sample dashboard with the logs ingested

To explore the data, one can simply go to [Kibana](http://localhost:5601) and go to the Discover tab (the icon that looks like a compass).
The dashboards are available from the Dashboard tab (the icon that looks a set of rectangles) and searching for the word "Kafka".


### Tearing it all down for the next set of logs

Run the following steps:

```
docker-compose -f docker-compose.yml -f setup.yml down -v

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

