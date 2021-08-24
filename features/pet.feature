#language: pt

Funcionalidade: Automatizar requisições na api petstore
Eu, como interessado em automação
Desejo aprender como automatizar requisições em uma API
Para ser um QA melhor.

Cenario: automatizando um POST
Dado que faça um POST no endpoint pet
Então um novo pet deve ser cadastrado

@get
Cenario: automatizando um GET
Dado que faça um GET com id no endpoint pet
Então um pet deve ser consultado

@put
Cenario: automatizando um PUT
Dado que faça um PUT no endpoint pet
Então um pet deve ser atualizado

@delete
Cenario: automatizando um DELETE
Dado que faça um DELETE no endpoint pet
Então um pet deve ser deletador



