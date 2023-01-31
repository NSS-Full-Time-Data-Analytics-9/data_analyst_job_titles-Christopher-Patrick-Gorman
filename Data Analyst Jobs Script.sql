select distinct domain, count(domain) as number_of_hard_to_fill
from data_analyst_jobs
where domain is not null
	and days_since_posting>21
	and skill ilike'%sql%'
group by domain
order by count(domain)desc;