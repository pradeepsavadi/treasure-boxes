select
  td_time_format(time, 'yyyy-MM-dd HH:mm:ss', 'JST') as time
  ,resource_id as auth_id
  ,resource_name as auth_name
  ,user_id
  ,user_email
from
  access
where
  td_interval(time, '-1d', 'JST')
  and
  event_name = 'connection_create'
