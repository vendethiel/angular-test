o = it
describe 'anime list' !->
	var $httpBackend
	beforeEach inject !($injector) ->
		$httpBackend := $injector.get '$httpBackend'

	describe "when logged off" !->
		o 'should redirect' !->
			browser!navigateTo '/anime'
			expect browser!location!url! .toBe '/article'

	describe "when logged in" !->
		o 'should not redirect if logged in' !->
			login!
			expect browser!location!url! .toBe '/anime'
			$httpBackend.flush!

		function login
			$httpBackend.when 'GET' '/api/session'
				.respond '{"username": "Heya", "admin": 1}'