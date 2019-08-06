#!/bin/bash

set -euo pipefail

beat=$1

until curl -Is "http://kibana:5601" | head -n 1 | grep -i 302 > /dev/null; do
	  echo "Waiting for kibana..."
	  sleep 1
done

chmod go-w /usr/share/$beat/$beat.yml


chmod go-w /usr/share/$beat/$beat.yml


echo "Setting up dashboards..."
# Load the sample dashboards for the Beat.
# REF: https://www.elastic.co/guide/en/beats/metricbeat/master/metricbeat-sample-dashboards.html
${beat} --strict.perms=false modules enable kafka -v
${beat} --strict.perms=false setup -v

