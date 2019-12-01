#flag -lsqlite3

#include "sqlite3.h"

struct C.sqlite3 
struct C.sqlite3_stmt 

fn C.sqlite3_column_int(C.sqlite_stmt, int) int 

fn main() {
        path := 'sqlite3_users.db' 
        db := &C.sqlite3{} 
        C.sqlite3_open(path.cstr(), &db)

        query := 'select count(*) from users' 
        stmt := &C.sqlite3_stmt{} 
        C.sqlite3_prepare_v2(db, query.cstr(), - 1, &stmt, 0)
        C.sqlite3_step(stmt) 
        nr_users := C.sqlite3_column_int(res, 0)
        C.sqlite3_finalize(res)
        println(nr_users) 
} 