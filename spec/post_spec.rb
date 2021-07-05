RSpec.describe'Agrupando os métodos de verbo POST' do
    
    it'Meu terceiro teste - criando um user'do
        @new_user = {
            name: "Daniel",
            job: "QA"
        }

        @request = User.post('/api/users', :body => @new_user)
        expect(@request.code).to eq(201)
        expect(@request['id']).not_to be nil
        expect(@request['name']).to eq(@new_user[:name])
        expect(@request['job']).to eq(@new_user[:job])
    end
    
end