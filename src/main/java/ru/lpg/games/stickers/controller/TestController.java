package ru.lpg.games.stickers.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class TestController {

    private final Logger log = LoggerFactory.getLogger(TestController.class);

    @RequestMapping(value = "/stickers", method = RequestMethod.GET, produces = MediaType.TEXT_PLAIN_VALUE)
    public String test() {
        return "STICKERS";
    }
}
