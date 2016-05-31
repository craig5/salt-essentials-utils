#!/usr/bin/env python

import salt.runner
import salt.config

master_opts = salt.config.client_config('/etc/salt/master')
run_client = salt.runner.RunnerClient(master_opts)

jobs = run_client.cmd('jobs.list_jobs', [])

for job_id in jobs:
    job_data = jobs[job_id]
    print '{0} started at: {1}'.format(job_id, job_data['StartTime'])
