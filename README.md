Everybody dies! El Departamento de Diagn�stico del Hospital
Universitario Tecnol�gico nos pidi� que les di�ramos una
mano con un sistema que les ayude a hacer su trabajo.
Despu�s de una interconsulta con distintos docentes de la
materia optamos por modelarlo en objetos.
Cualquier persona puede contraer enfermedades. En el momento que contrae una
enfermedad no le causa ning�n efecto, pero cada d�a que vive una persona con su
enfermedad se producen sus efectos.
De toda enfermedad se conoce la cantidad de c�lulas que amenaza de la persona enferma,
que depende de qu� enfermedad sea y puede ir cambiando a medida que transcurre el
tiempo, atenu�ndose o agrav�ndose. El efecto que provoca en una persona es:
? Las enfermedades infecciosas (como las malarias o las otitis) aumentan la
temperatura de la persona infectada en tantos grados como la mil�sima parte de las
c�lulas amenazadas. El m�ximo de temperatura que puede tener una persona es
45�.
? Las enfermedades autoinmunes (como los casos de lupus) le destruyen a la persona
la cantidad de c�lulas amenazadas.
Por otra parte, las enfermedades infecciosas pueden reproducirse a s� mismas, duplicando
la cantidad de c�lulas amenazadas.
Adem�s, las enfermedades pueden clasificarse como agresivas o no agresivas. Una
enfermedad infecciosa es agresiva cuando la cantidad de c�lulas afectadas supera el 10%
de las c�lulas totales del cuerpo. Por otro lado, una enfermedad autoinmune es agresiva
cuando afect� a la persona por m�s de un mes (� sea, produjo su efecto m�s de 30 veces).
Se pide la codificaci�n necesaria y sus casos de prueba (al menos lo que se pide en el
enunciado, pueden organizarlos como quieran y agregar m�s!) considerando el siguiente
escenario inicial con personas y enfermedades:
Enfermedades:
a. Una malaria de 500 c�lulas amenazadas, una otitis de 100 c�lulas amenazadas y un
lupus de 10000.
b. Otra malaria de 800 c�lulas amenazadas.
Personas:
c. Logan, con temperatura normal (36 grados) y con 3.000.000 de c�lulas, habiendo
contra�do las tres enfermedades del �tem a).
d. Frank, con temperatura normal y 3.500.000 c�lulas.
1. Hacer que Frank contraiga la enfermedad del �tem b).
2. Hacer que una malaria (la que contrajo Logan) se reproduzca.
3. Hacer que Logan viva un d�a de su vida para verificar:
a. la cantidad de c�lulas afectadas de Logan que est�n afectadas por
enfermedades agresivas.
b. la enfermedad de Logan que m�s c�lulas afecte.
2. Hacer que Logan pase 31 d�as (se puede usar 31.times { �algo para hacer� } ) y verificar
los resultados de las consultas del punto anterior.