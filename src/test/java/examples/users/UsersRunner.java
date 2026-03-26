package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {

    @Karate.Test
    Karate createUser() {
        return Karate.run("createAccount").relativeTo(getClass());
    }

    @Karate.Test
    Karate deleteUser() {
        return Karate.run("deleteAccount").relativeTo(getClass());
    }

    @Karate.Test
    Karate updateUser() {
        return Karate.run("updateAccount").relativeTo(getClass());
    }

    @Karate.Test
    Karate getUserByEmail() {
        return Karate.run("getUserDetailByEmail").relativeTo(getClass());
    }

}
