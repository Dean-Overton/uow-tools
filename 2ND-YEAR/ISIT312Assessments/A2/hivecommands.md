### Hadoop Init

```
$HADOOP_HOME/sbin/start-all.sh
```

### Check running services

```
jps
```

### Hive directories

```
echo $HIVE_HOME
echo $HIVE_CONF_DIR
```

### Hive MetaStore

```
$HIVE_HOME/bin/hive --service metastore
```

### Hive server 2

```
$HIVE_HOME/bin/hiveserver2
```

### Hive CLI

```
$HIVE_HOME/bin/beeline

!connect jdbc:hive2://localhost:10000

Enter
Enter
```

### Beeline Quit

```
!quit
```

### Recording a Hive script

If you would like to save a report from processing of HQL script then you should process a commands:

```
!record example.rpt
!run file.hql
!record
```
