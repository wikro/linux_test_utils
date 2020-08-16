#!/bin/sh

msg () {
  MSG[0]="Connection timed out"
  MSG[1]="Connection refused"
  MSG[2]="Host is down"
  MSG[3]="No route to host"

  RND="$(($RANDOM % 4))"

  echo "${MSG[$RND]}"
}

while true; do
  echo "[$(date '+%F %T')] Error: $(msg)" >&2
done
