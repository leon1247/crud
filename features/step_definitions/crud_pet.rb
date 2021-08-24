Dado("que faça um POST no endpoint pet") do
  @body = {
    "id": 1247,
    "category": {
      "id": 1,
      "name": "dog",
    },
    "name": "fofuxo",
    "photoUrls": [
      "string",
    ],
    "tags": [
      {
        "id": 2021,
        "name": "vacinado",
      },
    ],
    "status": "available",
  }.to_json

  @create_pet = HTTParty.post "https://petstore.swagger.io/v2/pet",
                              :body => @body,
                              :headers => { "accept" => "application/json",
                                            "Content-Type" => "application/json" }
end

Então("um novo pet deve ser cadastrado") do
  puts @create_pet.body
  puts @create_pet.message
  expect(@create_pet.code).to eql 200
end

Dado("que faça um GET com id no endpoint pet") do
  @consult_pet = HTTParty.get "https://petstore.swagger.io/v2/pet/1247"
end

Então("um pet deve ser consultado") do
  puts @consult_pet.body
  puts @consult_pet.message
  puts @consult_pet.code
  expect(@consult_pet.code).to eql 200
end

Dado("que faça um PUT no endpoint pet") do
  @body = {
    "id": 1247,
    "category": {
      "id": 2,
      "name": "cat",
    },
    "name": "fofuxo",
    "photoUrls": [
      "string",
    ],
    "tags": [
      {
        "id": 2021,
        "name": "vacinado",
      },
    ],
    "status": "available",
  }.to_json

  @update_pet = HTTParty.put "https://petstore.swagger.io/v2/pet",
                             :body => @body,
                             :headers => { "accept" => "application/json",
                                           "Content-Type" => "application/json" }
end

Então("um pet deve ser atualizado") do
  puts @update_pet.body
  puts @update_pet.message
  puts @update_pet.code
  expect(@update_pet.code).to eql 200
end

Dado("que faça um DELETE no endpoint pet") do
  @delete_pet = HTTParty.delete "https://petstore.swagger.io/v2/pet/1247",
                                :headers => { "accept" => "application/json",
                                              "api_key" => "chavedocadeado" }
end

Então("um pet deve ser deletador") do
  puts @delete_pet.body
  puts @delete_pet.message
  puts @delete_pet.code
  expect(@delete_pet.code).to eql 200
end
