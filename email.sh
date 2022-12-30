#!/bin/bash

TO_ADDRESS="warehouse@furnitas.com"
FROM_ADDRESS="c0033267@hallam.shu.ac.uk"
SUBJECT= "Weekly Stock Update Request"
BODY= "Please reply to this email with an update of the weekly stocktakings"

echo ${BODY} | mail -s ${SUBJECT} ${TO_ADDRESS} -- -r ${FROM_ADDRESS}
