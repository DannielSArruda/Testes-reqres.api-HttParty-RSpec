RSpec.describe'Agrupando os métodos de verbo DELETE' do

    it'Meu quinto teste - editando um user' do
        @request = User.delete('/api/users/54')
        expect(@request.code).to eq(204)
        
    end
end