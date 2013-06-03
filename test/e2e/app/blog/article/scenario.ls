ite = it
describe "article list" !->
	beforeEach !->
		browser!navigateTo "/"

	ite "should redirect to article" !->
		expect browser!location!url! .toBe "/article"