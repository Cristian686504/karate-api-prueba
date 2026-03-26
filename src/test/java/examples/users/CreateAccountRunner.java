package examples.users;

import com.intuit.karate.junit5.Karate;

class CreateAccountRunner {

    @Karate.Test
    Karate createUser() {
        return Karate.run("createAccount").relativeTo(getClass());
    }

}
