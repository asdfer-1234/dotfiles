HOUR=$(date +%H | sed -r 's/0*([0-9]*)/\1/')
if (( HOUR <= 0 )); then
	printf "󱑊"
elif (( HOUR <= 1 )); then
	printf "󱐿"
elif (( HOUR <= 2 )); then
	printf "󱑀"
elif (( HOUR <= 3 )); then
	printf "󱑁"
elif (( HOUR <= 4 )); then
	printf "󱑂"
elif (( HOUR <= 5 )); then
	printf "󱑃"
elif (( HOUR <= 6 )); then
	printf "󱑄"
elif (( HOUR <= 7 )); then
	printf "󱑅"
elif (( HOUR <= 8 )); then
	printf "󱑆"
elif (( HOUR <= 9 )); then
	printf "󱑇"
elif (( HOUR <= 10 )); then
	printf "󱑈"
elif (( HOUR <= 11 )); then
	printf "󱑉"
elif (( HOUR <= 12 )); then
	printf "󱑖"
elif (( HOUR <= 13 )); then
	printf "󱑋"
elif (( HOUR <= 14 )); then
	printf "󱑌"
elif (( HOUR <= 15 )); then
	printf "󱑍"
elif (( HOUR <= 16 )); then
	printf "󱑎"
elif (( HOUR <= 17 )); then
	printf "󱑏"
elif (( HOUR <= 18 )); then
	printf "󱑐"
elif (( HOUR <= 19 )); then
	printf "󱑑"
elif (( HOUR <= 20 )); then
	printf "󱑒"
elif (( HOUR <= 21 )); then
	printf "󱑓"
elif (( HOUR <= 22 )); then
	printf "󱑔"
elif (( HOUR <= 23 )); then
	printf "󱑕"
fi

printf "%s" "$(date "+%T")"
