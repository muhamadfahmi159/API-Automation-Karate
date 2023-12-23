package APITestUser;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class RunnerEmail {
    public static void main(String[] args) {
        // Incorrect Email
        Results results = Runner.path("classpath:APITestUser/postUserIncorrectEmail.feature")
                .tags("~@ignore")
                .parallel(1);
        if (results.getFailCount() > 0) {
            System.exit(1);
        }
    }
}
