--liquibase formatted sql logicalFilePath:sample/changelog-2.0.sql

--changeset Swaroop.J:1
--comment: example comment
create table newcustomer (
    id int primary key not null,
    name character varying(50) not null,
    address1 character varying(50),
    address2 character varying(50),
    city character varying(50)
)
--rollback DROP TABLE customer;

--changeset other.dev:3
--comment: alter newcustomer
alter table newcustomer add column country character varying(50)
--rollback ALTER TABLE company DROP COLUMN country;

