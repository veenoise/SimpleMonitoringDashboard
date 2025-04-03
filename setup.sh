#!/usr/bin/env bash

wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh && sh /tmp/netdata-kickstart.sh --disable-telemetry --stable-channel --claim-token YOUR_CLAIM_TOKEN --claim-rooms YOUR_CLAIM_ROOM --claim-url https://app.netdata.cloud