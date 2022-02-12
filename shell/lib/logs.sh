#!/bin/bash

log ()
{
    echo "Log message: $1"
}

log ()
{
    echo "[$(date -u)] : $1"
}

success ()
{
    echo "[$(date -u)] : $1"
}

error ()
{
    echo "[$(date -u)] : $1"
}