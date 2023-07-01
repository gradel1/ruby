CREATE TABLE IF NOT EXISTS students (
                                        id          INTEGER PRIMARY KEY AUTOINCREMENT,
                                        last_name     text not null,
                                        first_name  text not null,
                                        patronymic text not null,
                                        phone       text null,
                                        telegram    text null,
                                        email       text null,
                                        git         text null
);
