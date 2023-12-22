package APITestUser;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;

class KarateTestRunner {

    public static void main(String[] args) {
        Results results = Runner.path("classpath:APITestUser/postUser.feature", "classpath:APITestUser/getUser.feature", "classpath:APITestUser/delUser.feature")
                .tags("~@ignore")
                .parallel(1);
        if (results.getFailCount() > 0) {
            System.exit(1);
        }
    }
}
