--liquibase formatted sql logicalFilePath:sample/changelog-1.0.sql

--changeset Swaroop.J:1
--comment: create company table
create table company (
    id int primary key not null,
    name character varying(50) not null,
    address1 character varying(50),
    address2 character varying(50),
    city character varying(50)
)
--rollback DROP TABLE company;

--changeset other.dev:2
--comment: create userdata table
create table userdata (
    id int primary key not null,
    name character varying(50) not null
)

--rollback DROP TABLE userdata;

--changeset Swaroop.J:3
--comment: create customer table
create table customer (
    id int primary key not null,
    customername character varying(50) not null
)

--rollback DROP TABLE customer;

