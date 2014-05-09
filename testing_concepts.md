Testing concepts
================

Write test, make test pass, refactor


Tests should not:
-   depend on system state
-   depend on other test suites
-   depend on other tests in the suite
-   test performance
-   be omnipotent
-   be slow


Issues
-   hard to test user interfaces, databases, similar
-   can increase, rather than decrease, technical debt
-   can require an excessive amount of developer time

Separation of concerns should not be violated. This makes testing interactions between units difficult.
Making mocks and stubs:
- allows tests with things that aren't built yet
- forces good design practices (less interdependancy)
- fast

BUT it isn't an accurate model of how things work

Fixes:
Contract & collaboration tests- test boundaries as well
rspec-fire - make sure real method exists for mocks
static typing - mock is subclass of real class with methods nulled so it throws typeerrors

One elegant solution:
https://www.destroyallsoftware.com/talks/boundaries






http://www.infoq.com/presentations/integration-tests-scam
> "Integration tests are a scam."
> -J.B. Rainsberger

Values - strings
Intities - objects with the same identifier (but potentially different states)
Services - Processes or actions

Ideal unit test tests a a single Intity or service with a set of values

The cost of a mistake is the amount of time between when it was made and when it was detected

running subsets of tests finds simple mistakes, looses harder interesting mistakes
reducing the cost of cheap mistakes, increasing cost of expensive mistakes


Arrange
Act
Assert

End-to-end tests are good for customer tests to ensure features exist, function as expected
but not part of the core TDD - "basic correctness" => do we get the right answer?
Integration/customer tests are clarifications of what needs to be built
It should never take an integration test to show basic correctness

Don't test the platform

mocks and stubs reveal where interfaces have service gunk

test state tests and also these:

Interaction/Collaboration Test:
    Asker:
    do i ask the right questions?
    can i handle the responses?

    Responder: (contract test)
    can i answer the questions?
    do i respond the expected way?

Contract tests need to match collaboration tests - design should handle this

sets: 0, 1, many, lots

Collaborators must agree on the communication
    Didn't check for a response they could give
    Checked for a response they can't give
    misunderstood form of response