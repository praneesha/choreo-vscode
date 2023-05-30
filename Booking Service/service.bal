import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Booking Service",
	id: "Booking Service-0bd1112c-188f-4d16-8883-d425dafcef72"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
