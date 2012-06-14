drop table ccsd;
\i './schema/voterlist.ccsd.schema.sql'
\copy ccsd from './data/ccsd.csv' with csv header
update ccsd set middle_initial = '' where middle_initial is null;
\i './ccsd+voters.sql'
