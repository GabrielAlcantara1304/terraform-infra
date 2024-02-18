Infraestrutura AWS feita com terraform

O terraform é muito bom para minimizar erros humanos e ter mais controle sobre a infra, com ele conseguimos automatizar a criação da infraestrutura com o uso de scripts de forma com que possamos replica-la. 

![alt text](https://github.com/GabrielAlcantara1304/terraform-infra/blob/main/infraterra.drawio.png)

Primeiro criei uma vpc com o cidr de 10.0.0.0/16, logo após criei uma subnet publica com o cidr de 10.0.0.0/24
criei também um security group com regras de entrada permitindo ssh e http de qualquer lugar, criei um internet gateway pra permitir o acesso a internet, criei um route table em que usei para direcionar o trafego para o gateway, criei uma route table association para associar minha subnet publica ao route table, por ultimo criei minhas maquinas e associei as mesmas á minha vpc e subnet para que sigam as regras definidas.
