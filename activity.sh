#!/bin/bash

YEARS=(2022 2023 2024 2025)
MONTHS=(01 02 03 04 05 06 07 08 09 10 11 12)

for YEAR in "${YEARS[@]}"; do
  for MONTH in "${MONTHS[@]}"; do

    # First commit
    DATE1="$YEAR-$MONTH-05T10:00:00"
    echo "Work on $DATE1" >> activity.txt
    git add .
    GIT_AUTHOR_DATE="$DATE1" GIT_COMMITTER_DATE="$DATE1" \
    git commit -m "update $YEAR-$MONTH first"

    # Second commit
    DATE2="$YEAR-$MONTH-20T18:00:00"
    echo "More work on $DATE2" >> activity.txt
    git add .
    GIT_AUTHOR_DATE="$DATE2" GIT_COMMITTER_DATE="$DATE2" \
    git commit -m "update $YEAR-$MONTH second"

  done
done
