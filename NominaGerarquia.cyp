Create(presidente:puesto {name: "Presidente"}),
(gerente:puesto {name: "Gerente"}),
(derechosHumanos:puesto {name:"Derechos Humanos"}),
(ensamblaje:puesto {name: "Ensamblaje"}),
(logistica:puesto {name: "Logistica"}),
(materiaprima:puesto {name: "Materia Prima"}),
(alonso:persona{name: "Alonso"}),
(hamilton:persona {name: "Hamilton"}),
(mickael:persona {name: "Mickael"}),
(ana:persona {name: "Ana"}),
(juan:persona {name: "Juan"}),
(vettel:persona {name: "Vettel"}),
(suares:persona {name: "Suares"}),
(fernando:persona {name: "Fernando"}),
(mick:persona {name: "Mick"}),
(russel:persona {name: "Russel"}),
(ocon:persona {name: "Ocon"}),
(latifi:persona {name: "Latifi"}),
(alex:persona {name "Alex"}),
(max:persona {name "Max"}),
(ricciardo:persona {name "Ricciardo"}),
(alonso)-[:Trabajo]->(presidente),
(hamilton)-[:Trabajo]->(gerente),
(mickael)-[:Trabajo]->(gerente),
(ana)-[:Trabajo]->(gerente),
(juan)-[:Trabajo]->(derechosHumanos),
(vettel)-[:Trabajo]->(ensamblaje),
(suares)-[:Trabajo]->(ensamblaje),
(fernando)-[:Trabajo]->(ensamblaje),
(mick)-[:Trabajo]->(ensamblaje),
(russel)-[:Trabajo]->(logistica),
(ocon)-[:Trabajo]->(logistica),
(latifi)-[:Trabajo]->(logistica),
(alex)-[:Trabajo]->(materiaprima),
(max)-[:Trabajo]->(materiaprima),
(ricciardo)-[:Trabajo]->(materiaprima);

//Relaciones entre gerentes 
Match (gerente:puesto), (presidente:puesto)
Where gerente.name = "Gerente" AND presidente.name = "Presidente"
create (gerente)-[:Relacion]->(presidente)

Match (ana:persona), (materiaprima:puesto)
Where ana.name = "Ana" AND materiaprima.name = "Materia Prima"
create (ana)-[:Relacion]->(materiaprima)

Match (hamilton:persona), (logistica:puesto)
Where hamilton.name = "Hamilton" AND logistica.name = "Logistica"
create (hamilton)-[:Relacion]->(logistica)

Match (mickael:persona), (ensamblaje:puesto)
Where mickael.name = "Mickael" AND ensamblaje.name = "Ensamblaje"
create (mickael)-[:Relacion]->(ensamblaje)

//Relaciones entre derechos humanos
Match (logistica:puesto), (derechosHumanos:puesto)
Where logistica.name = "Logistica" AND derechosHumanos.name = "Derechos Humanos"
create (logistica)-[:Relacion]->(derechosHumanos)

Match (materiaprima:puesto), (derechosHumanos:puesto)
Where materiaprima.name = "Materia Prima" AND derechosHumanos.name = "Derechos Humanos"
create (materiaprima)-[:Relacion]->(derechosHumanos)

Match (ensamblaje:puesto), (derechosHumanos:puesto)
Where ensamblaje.name = "Ensamblaje" AND derechosHumanos.name = "Derechos Humanos"
create (ensamblaje)-[:Relacion]->(derechosHumanos)

//Eliminar un nodo
Match (mick:persona {name: "Mick"})
DETACH DELETE mick

//Buscar un nodo
MATCH (max:persona {name: 'Max'})
RETURN max

Match (mick:persona), (materiaprima:puesto)
Where mick.name = "Mick" AND materiaprima.name = "Materia Prima"
create (mick)-[:Trabajo]->(materiaprima)
