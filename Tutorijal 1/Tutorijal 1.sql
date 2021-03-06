-- Tutorijal 1


--Zadatak 1

SELECT first_name "Naziv zaposlenog",
       salary "Plata"
FROM employees
WHERE salary > 2456;


--Zadatak 2

SELECT first_name || ' ' || last_name  "Naziv zaposlenog",
       department_id "Sifra odjela"
FROM employees
WHERE employee_id = '102';


--Zadatak 3

SELECT *
FROM employees
WHERE salary NOT BETWEEN 1000 AND 2345;


--Zadatak 4

SELECT e.first_name || ' ' || e.last_name "Zaposleni",
       j.job_title "Posao",
       e.hire_date "Datum zaposlenja"
FROM employees e, jobs j
WHERE e.job_id = j.job_id
  AND hire_date  BETWEEN To_Date ('11.01.1996', 'DD-MM-YYYY') AND To_Date('22.02.1996', 'DD-MM-YYYY');


--Zadatak 5

SELECT e.first_name || ' ' || e.last_name "Naziv zaposlenog",
       e.department_id "Sifra odjela"
FROM employees e
WHERE e.department_id = '10'
  OR  e.department_id = '30'
ORDER BY e.last_name ASC;


--Zadatak 6

SELECT e.salary " Mjesecna plata",
       e.first_name "Ime zaposlenog",
       e.last_name "Prrezime zaposenog",
       Nvl(e.commission_pct, '0') "Dodatak na platu"
FROM employees e
WHERE e.salary > 1500
  and (e.department_id = 30
  OR e.department_id =10);


--Zadatak 7

SELECT *
FROM employees
WHERE hire_date < To_Date('1996', 'YYYY');


--Zadatak 8

SELECT e.first_name || ' ' || e.last_name "Naziv zaposlenog",
       e.salary "Plata",
       j.job_title "Posao"
FROM employees e, jobs j
WHERE e.job_id = j.job_id
  AND e.manager_id IS NULL;


--Zadatak 9

SELECT e.first_name || ' ' || e.last_name "Naziv zaposlenog",
       e.salary " Mjesecna plata",
       e.commission_pct "Dodatak na platu"
FROM employees e
WHERE e.commission_pct IS NOT NULL
ORDER BY e.salary, e.commission_pct DESC ;


-- Zadatak 10

SELECT e.first_name || ' ' || e.last_name "Naziv zaposlenog"
FROM employees e
WHERE e.first_name || '' || last_name LIKE '%l%l%';



--Zadatak 11

SELECT e.first_name || ' ' || e.last_name "Naziv zaposlenog",
       e.salary " Mjesecna plata",
       e.commission_pct "Dodatak na platu"
FROM employees e
WHERE Nvl(e.commission_pct, 0) * salary > 0.2 * e.salary;




SELECT * FROM employees;
SELECT * FROM jobs;


-- Sa predavanja

SELECT sysdate FROM dual; --sysdate (sistemski datum i vrijeme)

SELECT * FROM user_tables;  -- prikaz svih tabela koji je korisnik kreirao

