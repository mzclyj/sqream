alias lcon='ClientCmd --database=lyj --username=sqream --password=sqream --host=000.000.000.000 --port=00000 --clustered --trim-varchars'
lcon -c "select * from case01;" --service=a40 --results-only --delimiter=";"

ClientCmd --database=lyj --username=sqream --password=sqream --host=000.000.000.000 --port=00000 --clustered --trim-varchars -c "select * from case01;" --service=a40 --results-only --delimiter=";"
