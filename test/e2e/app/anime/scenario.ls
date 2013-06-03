o = it

describe 'anime list' !->
	function login
		input 'username' .enter 'Heya'
		input 'password' .enter 'mdrlol'
		element '#login [type="submit"]' .click!

	describe "when logged off" !->
		o 'should redirect' !->
			browser!navigateTo '/anime'
			expect browser!location!url! .toBe '/article'

	describe "when logged in" !->
		o 'should not redirect if logged in' !->
			login!
			expect browser!location!url! .toBe '/anime'
			$httpBackend.flush!