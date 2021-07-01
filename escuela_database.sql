create database escuela;
use escuela;

-- tabla carreras --
create table if not exists escuela.carreras (
	carrera_cod int auto_increment not null,
    carrera_nom varchar(45) not null,
    carrara_duracion int not null,
    primary key (carrera_cod)
);

-- tabla alumnos --
create table if not exists escuela.alumnos (
	alumno_ci int auto_increment not null,
    alumno_nom varchar(45) not null,
    alumno_edad int not null,
    carrera_cod1 int not null,
    primary key (alumno_ci),
    foreign key (carrera_cod1)
    references escuela.carreras(carrera_cod)
);
-- tabla profesores --
create table if not exists escuela.profesores (
	profe_ci int auto_increment not null,
    profe_nom varchar(45) not null,
    profe_edad int not null,
    primary key (profe_ci)
);
-- tabla alumno_profesor --
create table if not exists escuela.alumno_profesor (
	alumno_ci1 int not null,
    profe_ci1 int not null,
    primary key(alumno_ci1,profe_ci1),
    foreign key (alumno_ci1)
    references escuela.alumnos(alumno_ci),
    foreign key (profe_ci1)
    references escuela.profesores(profe_ci)
);
-- tabla materias --}
create table if not exists escuela.materias (
	materia_cod int auto_increment not null,
    materia_nom varchar(45) not null,
    materia_horas int not null,
    primary key (materia_cod)
);
-- tabla alumno_materia --
create table if not exists escuela.alumno_materia (
	alumno_ci2 int not null,
    materia_cod1 int not null,
    primary key(alumno_ci2, materia_cod1),
    foreign key (alumno_ci2)
    references escuela.alumnos(alumno_ci),
    foreign key (materia_cod1)
    references escuela.materias(materia_cod)
);
-- tabla materia_profesor --
create table if not exists escuela.materia_profesor (
	materia_cod2 int not null,
    profe_ci2 int not null,
    primary key(materia_cod2,profe_ci2),
    foreign key(materia_cod2)
    references escuela.materias(materia_cod),
    foreign key(profe_ci2)
    references escuela.profesores(profe_ci)
);