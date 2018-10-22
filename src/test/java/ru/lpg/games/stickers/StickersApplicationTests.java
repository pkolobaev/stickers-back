package ru.lpg.games.stickers;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.reactive.server.WebTestClient;
import ru.lpg.games.stickers.controller.TestController;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
public class StickersApplicationTests {

    private final WebTestClient client = WebTestClient.bindToController(TestController.class).build();

    @Test
    public void testGet() {
        client.get()
                .uri("/stickers")
                .exchange()
                .expectStatus()
                .isOk()
                .expectBody(String.class)
                .isEqualTo("{\"Greeting\":\"Welcome to Stickers\"}");
    }
}
