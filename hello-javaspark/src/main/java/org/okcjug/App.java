package org.okcjug;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import spark.Spark;

public class App {
    private static Logger log = LoggerFactory.getLogger(App.class);

    public static void main(String[] args) {
        Spark.get("/hello/:name/:age", (req, res) -> {

            log.info("received request:" + req.url());

            return String.format(
                "Hello, %s year old named %s (from javaspark)\n",
                req.params(":age"),
                req.params(":name"));
        });
    }
}
