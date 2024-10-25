# List all query IDs and check uniqueness
grep -REoh "DOq[0-9]{3}" * | sort --reverse | uniq -c