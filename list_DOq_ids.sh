# List all query IDs and count to ensure uniqueness
echo "COUNT  ID"
grep -REh "[# ]id:" * | grep -Eo "DOq[0-9]{3}" | sort --reverse | uniq -c