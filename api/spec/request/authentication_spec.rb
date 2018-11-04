require 'rails_helper'

RSpec.describe 'POST /api/v1/users/login', type: :request do
	let(:user) { Fabricate(:user) }
	let(:url) { '/api/v1/users/login' }
	let(:params) do
		{
			user: {
				email: user.email,
				password: user.password
			}
		}
	end

	context 'when params are correct' do
		before { post url, params: params }

		it 'returns 201' do
			expect(response).to have_http_status(201)
		end

		it 'returns JTW token in authorization header' do
			expect(response.headers['Authorization']).to be_present
		end

		it 'returns a valid JWT token' do
			token_from_request = response.headers['Authorization'].split(' ').last
			decoded_token = JWT.decode(token_from_request, ENV["KEY_SECRET_DEVISE_JWT"], true)

			expect(decoded_token.first['sub']).to be_present
		end
	end

	context 'when params are incorrect' do
		before { post url, params: nil }

		it 'returns unathorized status' do
			expect(response.status).to eq 401
		end
	end
end

RSpec.describe 'DELETE /api/v1/users/logout', type: :request do
	let(:url) { '/api/v1/users/logout' }

	it 'returns 204, no content' do
		delete url
		expect(response).to have_http_status(204)
	end
end
