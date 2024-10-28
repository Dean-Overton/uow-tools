### Hadoop Init

```
$HADOOP_HOME/sbin/start-all.sh
```

### Restart HBase

Stop HBase:

```
$HBASE_HOME/bin/stop-hbase.sh
```

Start HBase:

```
$HBASE_HOME/bin/start-hbase.sh
```

### Check running services

Ensure **HMaster, HRegionServer and
HQuorumPeer** are all running.

```
jps
```

### Start HBase Shell

```
$HBASE_HOME/bin/hbase shell
```

### Process Hbase file into report

```
$HBASE_HOME/bin/hbase shell < script.hb > report.rpt
```

$HBASE_HOME/bin/hbase shell < "solution2-1.hb" > "solution2-1.txt"
