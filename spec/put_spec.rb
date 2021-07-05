RSpec.describe'Agrupando os métodos de verbo PUT' do
    
    it'Meu quarto teste - editando um user' do
        @updated_user = {
            name: "Daniel Silva",
            job: "Automation QA"
        }

        @request = User.put('/api/users/2', :body => @updated_user)
        expect(@request.code).to eq(200)
        expect(@request['name']).to eq(@updated_user[:name])
        expect(@request['job']).to eq(@updated_user[:job])
    end
end