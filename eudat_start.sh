#!/bin/bash
# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

set -e

sudo /home/jovyan/work/eudat_connect.sh

. /usr/local/bin/start.sh jupyter notebook $*
