create table c_route_type (
    id integer primary key,
    type text not null
);

insert into c_route_type values
    (1, 'Top Rope'),
    (2, 'Boulder'),
    (3, 'Lead');

create table c_route_status (
    id integer primary key,
    status text not null
)

insert into c_route_status values
    (1, 'Want to try'),
    (2, 'In progress'),
    (3, 'Completed');

create table c_route_completed_status (
    id integer primary key,
    completed_status text not null
)

insert into c_route_completed_status values
    (1, 'Onsight'),
    (2, 'Flash'),
    (3, 'Redpoint');

create table c_route_difficulty (
    id integer primary key,
    difficulty text not null
)

insert into c_route_difficulty values
    (1, 'Extremely Easy'),
    (2, 'Easy'),
    (3, 'Intermediate'),
    (4, 'Challenging'),
    (5, 'Extremely Challenging');

create table route (
    id integer primary key,
    title text not null,
    date INTEGER NOT NULL, -- Unix time
    type INTEGER NOT NULL,
    grade TEXT NOT NULL,
    status INTEGER NOT NULL,
    completed_status INTEGER,
    difficulty INTEGER NOT NULL,
    thoughts TEXT NOT NULL,

    FOREIGN KEY(type) REFERENCES c_route_type(id),
    FOREIGN KEY(status) REFERENCES c_route_status(id),
    FOREIGN KEY(completed_status) REFERENCES c_route_completed_status(id),
    FOREIGN KEY(difficulty) REFERENCES c_route_difficulty(id)
);

create table route_tag (
    id integer primary key,
    route_id integer not null,
    tag text not null,
    foreign key(route_id) references route(id)
)