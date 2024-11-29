
drop table if exists accounts;

create or replace procedure ##_app_owner.CONSOLIDATED_VIEW$other_file_procedure
(
                 books in BOOK_IN_OT,
                 detail in DETAIL_TT,
                 min_len out int,
                 max_len out int,
                 avg_len out numeric,
                 books out BOOK_OUT_OT,
                 bla TEST.VALUE%TYPE
                 )
             language plpgsql
             as $$
             begin
               select min(length),
                      max(length),
                     avg(length)::numeric(5,1)
               into min_len, max_len, avg_len
               from film;
             end;$$

create or replace procedure ##_app_owner.CONSOLIDATED_VIEW$get_film_stat(
                 booksin in BOOK_IN_OT,
                 min_len out int,
                 max_len out int,
                 avg_len out numeric,
                 booksout out BOOK_OUT_OT)
             language plpgsql
             as $$
             begin
               select min(length),
                      max(length),
                     avg(length)::numeric(5,1)
               into min_len, max_len, avg_len
               from film;
             end;$$

 create or replace procedure ##_app_owner.CONSOLIDATED_VIEW$other_file_procedure1 (
                  books in BOOK_IN_OT,
                  min_len out int,
                  max_len out int,
                  avg_len out numeric,
                  books out BOOK_OUT_OT)
              language plpgsql
              as $$
              begin
                select min(length),
                       max(length),
                      avg(length)::numeric(5,1)
                into min_len, max_len, avg_len
                from film;
              end;$$