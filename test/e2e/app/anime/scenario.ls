ite = it
describe "anime list" !->
	beforeEach !->
		browser!navigateTo "/anime"

	ite "should redirect if not logged in" !->
		expect browser!location!url! .toBe "/"
	