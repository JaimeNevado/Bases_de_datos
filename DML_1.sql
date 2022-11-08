
--Ejercicio 1--

select nombre, apellido1, apellido2 from profesores where departamento = 1;

--Ejercicio 2--

select nombre, apellido1, apellido2 from profesores where departamento != 3;

--Ejercicio 3--

select nombre, apellido1, apellido2 from profesores where email like '%lcc.uma.es';

--Ejercicio 4--

select nombre, apellido1, apellido2 from alumnos where email IS NULL;

--Ejercicio 5--

select nombre, creditos, round(teoricos/creditos, 4) * 100 porcentaje from asignaturas where curso = 3;

--Ejercicio 6--

select alumno, calificacion from matricular where asignatura = 112 order by alumno ASC;

--Ejercicio 7--

select nombre, hombres+mujeres from municipio;

--Ejercicio 8--

select 'El alumno ' || nombre, apellido1, apellido2 || ' no dispone de Correo' from alumnos where email IS NULL AND genero='MASC' union
select 'La alumna ' || nombre, apellido1, apellido2 || ' no dispone de Correo' from alumnos where email IS NULL AND genero='FEM';


--Ejercicio 9--

select nombre, apellido1, apellido2 from profesores where antiguedad < to_date('01/01/1990', 'DD/MM/YYYY');

--Ejercicio 10--

select nombre, apellido1, apellido2 from profesores where months_between(SYSDATE, FECHA_NACIMIENTO) < (30*12);

--Ejercicio 11--

select upper(nombre) nombre, upper(apellido1) apellido1, upper(apellido2) apellido2, trunc(months_between(sysdate, antiguedad)/(12*3)) Trienios from profesores where months_between(SYSDATE, antiguedad) > 9*12;


