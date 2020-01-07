
CREATE TABLE pasient (
  pasientid serial primary key,
  fornavn text not null,
  etternavn text not null,
  adresse text, 
  tlf text,
  fodtdato date,
  kjonn text,
  legetime int references legetime (legetimeid),
  legeid int references lege (legeid)
);

CREATE TABLE lege (
  legeid serial primary key,
  fornavn text not null,
  etternavn text not null,
  tlf text
);

CREATE TABLE legetime (
  legetimeid serial primary key,
  dato date,
  kl time,
  legeid int references lege (legeid)
);

