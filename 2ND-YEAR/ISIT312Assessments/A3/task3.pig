account = LOAD '/user/bigdata/account.tbl' USING PigStorage('|') AS (
    account_number:chararray,
    bank_name:chararray,
    balance:double,
    account_type:chararray
);

bank = LOAD '/user/bigdata/bank.tbl' USING PigStorage('|') AS (
    name: chararray,
    hq_country: chararray,
    hq_city: chararray,
    hq_street: chararray,
    hq_building_number: int,
    website: chararray,
    email: chararray,
    bank_type: chararray
);

transaction = LOAD '/user/bigdata/transaction.tbl' USING PigStorage('|') AS (
    account_number: int,
    bank_name: chararray,
    data_time: chararray, 
    amount: double,
    transaction_type: chararray
);


japanese_banks = filter bank by hq_country == 'Japan';
japanese_bank_name = foreach japanese_banks generate name;
dump japanese_bank_name;

construction_banks = FILTER bank BY bank_type == 'construction';
construction_accounts = JOIN account BY bank_name, construction_banks BY name;
result = FOREACH construction_accounts GENERATE account_number;
dump result;

bank_accounts = join bank by name left outer, account by bank_name;
no_account_bank_account = filter bank_accounts by account_number is NULL;
no_account_bank_names = foreach no_account_bank_account generate name;
dump no_account_bank_names;

japanese_accounts = join japanese_banks by name, account by bank_name;
grouped_japanese_ac_by_bank = group japanese_accounts by name;
japenese_bank_ac_totals = foreach grouped_japanese_ac_by_bank generate group, COUNT(japanese_accounts);
dump japenese_bank_ac_totals;

