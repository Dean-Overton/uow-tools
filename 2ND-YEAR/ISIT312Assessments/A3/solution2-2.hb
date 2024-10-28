scan 'task2-2',{COLUMN=>'SUBJECT:code'}
scan 'task2-2',{COLUMN=>'FILES:fnumber1'}
scan 'task2-2',{COLUMN=>'FILES:fnumber2'}

get 'task2-2', 'subject|312', {COLUMN=>'SUBJECT',VERSIONS=>2}

get 'task2-2', 'submission|007|312|assignment|1', {COLUMN=>['SUBMISSION', 'SUBJECT', 'STUDENT', 'FILES'],VERSIONS=>1}

put 'task2-2','submission|007|312|assignment|1','SUBMISSION:sdate','02-APR-2019'
scan 'task2-2',{COLUMN=>'SUBMISSION'}

alter 'task2-2', NAME => 'DEGREE', VERSIONS => 1
put 'task2-2','student|007','DEGREE:degree','Computer Science'
get 'task2-2','student|007',{COLUMN=>['STUDENT','DEGREE'],VERSIONS=>1}