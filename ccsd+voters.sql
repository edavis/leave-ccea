copy (
  select
    c.first_name first_name,
    c.middle_initial middle_initial,
    c.last_name last_name,
    c.job_title,
    c.work_location,
    v.party,
    v.address1,
    v.city,
    v.state,
    v.zip,
    v.phone

  from
    ccsd c

  inner join
    voters v

  on
    c.first_name = v.first_name and
    c.last_name = v.last_name and
    -- if voterlist has a middle initial, use it
    -- otherwise, have it always be true
    c.middle_initial = case
      when v.middle_initial != ''
        then v.middle_initial
      else c.middle_initial
    end and
    v.county = 'Clark'

  where
    v.address1 != '' and
    v.city != '' and
    v.zip != ''

  order by
    c.last_name asc,
    c.first_name asc
) to stdout with csv header;
