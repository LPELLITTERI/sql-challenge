-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.department
(
    dept_no character varying NOT NULL,
    dept_name character varying COLLATE pg_catalog."default" NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE IF NOT EXISTS public.dept_emp
(
    emp_no character varying NOT NULL,
    dep_no character varying NOT NULL
);

CREATE TABLE IF NOT EXISTS public.dept_manager
(
    dept_no character varying NOT NULL,
    employee_no character varying NOT NULL,
    PRIMARY KEY (employee_no, dept_no)
);

CREATE TABLE IF NOT EXISTS public.employees
(
    emp_no character varying NOT NULL,
    dept_no character varying NOT NULL,
    title_id character varying NOT NULL,
    birth_date date NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    sex character varying NOT NULL,
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE IF NOT EXISTS public.salaries
(
    emp_no character varying NOT NULL,
    salary integer NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE IF NOT EXISTS public.titles
(
    title_id character varying NOT NULL,
    title character varying NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE IF NOT EXISTS public.title_employee
(
    emp_no character varying NOT NULL,
    title_id character varying NOT NULL
);

ALTER TABLE IF EXISTS public.department
    ADD FOREIGN KEY (dept_no)
    REFERENCES public.dept_manager (dept_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.department
    ADD FOREIGN KEY (dept_no)
    REFERENCES public.department (dept_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.dept_emp
    ADD FOREIGN KEY (dep_no)
    REFERENCES public.employees (dept_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.dept_emp
    ADD FOREIGN KEY (emp_no)
    REFERENCES public.employees (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.dept_manager
    ADD FOREIGN KEY (dept_no)
    REFERENCES public.department (dept_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.dept_manager
    ADD FOREIGN KEY (employee_no)
    REFERENCES public.employees (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.employees
    ADD FOREIGN KEY (emp_no)
    REFERENCES public.title_employee (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.employees
    ADD FOREIGN KEY (emp_no)
    REFERENCES public.salaries (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.salaries
    ADD FOREIGN KEY (emp_no)
    REFERENCES public.employees (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.titles
    ADD FOREIGN KEY (title_id)
    REFERENCES public.title_employee (title_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.title_employee
    ADD FOREIGN KEY (emp_no)
    REFERENCES public.employees (emp_no) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.title_employee
    ADD FOREIGN KEY (title_id)
    REFERENCES public.titles (title_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;