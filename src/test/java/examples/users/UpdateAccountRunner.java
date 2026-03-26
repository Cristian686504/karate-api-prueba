package examples.users;

import com.intuit.karate.junit5.Karate;

class UpdateAccountRunner {

    @Karate.Test
    Karate updateUser() {
        return Karate.run("updateAccount").relativeTo(getClass());
    }

}
