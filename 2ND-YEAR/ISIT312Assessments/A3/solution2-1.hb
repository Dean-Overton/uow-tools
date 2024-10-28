create 'job-applicants', 'APPLICANT', 'EMPLOYER', 'POSITION', 'APPLICATION';

put 'job-applicants', 'APPLICANT|1', 'APPLICANT:full-name', 'Phil Overton'
put 'job-applicants', 'APPLICANT|1', 'APPLICANT:date-of-birth', '1990-05-15'

put 'job-applicants', 'APPLICANT|2', 'APPLICANT:full-name', 'Dean Overton'
put 'job-applicants', 'APPLICANT|2', 'APPLICANT:date-of-birth', '1988-10-22'

put 'job-applicants', 'EMPLOYER|UOW', 'EMPLOYER:phone', '62-4221-3218'
put 'job-applicants', 'EMPLOYER|ANU', 'EMPLOYER:phone', '62-4221-3213'

put 'job-applicants', 'POSITION|1', 'POSITION:title', 'Software Engineer'
put 'job-applicants', 'POSITION|1', 'POSITION:salary', '79000'
put 'job-applicants', 'POSITION|2', 'POSITION:title', 'Senior Software Engineer'
put 'job-applicants', 'POSITION|2', 'POSITION:salary', '110000'

put 'job-applicants', 'APPLICATION|1|applicant_number|position_number|employer_name', 'APPLICATION:total_skills', '3'

put 'job-applicants', 'APPLICATION|1|1|1|UOW', 'APPLICATION:total_skills', '3'
put 'job-applicants', 'APPLICATION|1|1|1|UOW', 'APPLICATION:education-level', 'Bachelors' 

put 'job-applicants', 'APPLICATION|1|2|2|ANU', 'APPLICATION:total_skills', '5'
put 'job-applicants', 'APPLICATION|1|2|2|ANU', 'APPLICATION:education-level', 'Masters'

put 'job-applicants', 'APPLICATION|1|1|2|ANU', 'APPLICATION:total_skills', '3'
put 'job-applicants', 'APPLICATION|1|1|2|ANU', 'APPLICATION:education-level', 'Bachelors'