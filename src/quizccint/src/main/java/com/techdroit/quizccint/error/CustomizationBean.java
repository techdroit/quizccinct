package com.techdroit.quizccint.error;

import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.web.servlet.ErrorPage;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;

@Component
public class CustomizationBean
  implements EmbeddedServletContainerCustomizer {
  
    @Override
    public void customize(ConfigurableEmbeddedServletContainer container) {        
        //container.addErrorPages(new ErrorPage(HttpStatus.BAD_REQUEST, "/400"));
        //container.addErrorPages(new ErrorPage(HttpStatus.NOT_FOUND, "/404"));
        container.addErrorPages(new ErrorPage(HttpStatus.METHOD_NOT_ALLOWED, "/405"));
        container.addErrorPages(new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR, "/500"));
        container.addErrorPages(new ErrorPage(HttpStatus.NOT_IMPLEMENTED, "/501"));
        container.addErrorPages(new ErrorPage(HttpStatus.BAD_GATEWAY, "/502"));
        container.addErrorPages(new ErrorPage(HttpStatus.SERVICE_UNAVAILABLE, "/503"));
        container.addErrorPages(new ErrorPage(HttpStatus.GATEWAY_TIMEOUT, "/504"));
        container.addErrorPages(new ErrorPage(HttpStatus.HTTP_VERSION_NOT_SUPPORTED, "/505"));
        container.addErrorPages(new ErrorPage("/error"));
    }
}