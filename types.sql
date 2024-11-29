CREATE TYPE randomType AS (f1 int, f2 text);

CREATE     TYPE ADDRESS_OT AS (address varchar(255), postcode numeric(5, 2));

CREATE     TYPE DETAIL_OT AS (detail varchar(255));

CREATE      TYPE BOOK_IN_OT AS         (bla TEST.VALUE%TYPE, name varchar(255), author varchar(255), rating numeric(5, 2), address ADDRESS_TT);

create       type BOOK_OUT_OT AS (name varchar(255),

author varchar(255),

rating varchar(5));
