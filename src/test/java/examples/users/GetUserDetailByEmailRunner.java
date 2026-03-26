package examples.users;

import com.intuit.karate.junit5.Karate;

class GetUserDetailByEmailRunner {

    @Karate.Test
    Karate getUserByEmail() {
        return Karate.run("getUserDetailByEmail").relativeTo(getClass());
    }

}
