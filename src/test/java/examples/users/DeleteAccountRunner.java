package examples.users;

import com.intuit.karate.junit5.Karate;

class DeleteAccountRunner {

    @Karate.Test
    Karate deleteUser() {
        return Karate.run("deleteAccount").relativeTo(getClass());
    }

}
