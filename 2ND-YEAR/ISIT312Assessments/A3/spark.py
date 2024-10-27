from pyspark.sql.types import *
account_schema = StructType([
    StructField("account_number", StringType(), True),
    StructField("bank_name", StringType(), True),
    StructField("balance", DoubleType(), True),
    StructField("account_type", StringType(), True)
])

transaction_schema = StructType([
    StructField("account_number", StringType(), True),
    StructField("bank_name", StringType(), True),
    StructField("date_time", TimestampType(), True),
    StructField("amount", DoubleType(), True),
    StructField("transaction_type", StringType(), True)
])

bank_schema = StructType([
    StructField("name", StringType(), True),
    StructField("hq_country", StringType(), True),
    StructField("hq_city", StringType(), True),
    StructField("hq_street", StringType(), True),
    StructField("hq_building_number", IntegerType(), True),
    StructField("web_site", StringType(), True),
    StructField("email", StringType(), True),
    StructField("bank_type", StringType(), True)
])
account = spark.read.format("csv").schema(account_schema).load("account.csv")
account.show()