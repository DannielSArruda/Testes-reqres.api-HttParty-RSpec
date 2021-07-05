RSpec.describe'Agrupando os métodos de verbo GET' do

    it'Meu primeiro teste - listando users' do
        @users = User.get('/api/users?page=2')
        expect(@users.code).to eq(200)
    end

    it'Meu segundo teste - verificando um usuário' do
        @users = User.get('/api/users/2')
        expect(@users.code).to eq(200)
        expect(@users['data']['id']).to eq(2)
        expect(@users['data']['first_name']).to eq("Janet")
    end

end