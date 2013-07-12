#!/bin/bash

find ~/Drobo/site_backups/ -type f -mtime +45 | xargs rm
