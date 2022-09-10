package com.koreate.betty.global.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import lombok.extern.slf4j.Slf4j;
import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Slf4j
@Configuration
@Import(DBConfig.class)
@EnableTransactionManagement
@PropertySource("classpath:/sms.properties")
public class RootConfig {
	
	@Value("${sms.api.key}")
	String apiKey;
	@Value("${sms.api.secret}")
	String apiSecret;
	@Value("${sms.url}")
	String smsUrl;

	@Bean
	public MessageSource messageSource() {
		ReloadableResourceBundleMessageSource ms = new ReloadableResourceBundleMessageSource();
		ms.setBasenames("classpath:/message/messages");
		ms.setDefaultEncoding("utf-8");
		return ms;
	}

	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("UTF-8");
		resolver.setMaxUploadSize(1024 * 1024 * 10);
		return resolver;
	}

	@Bean
	public static PropertySourcesPlaceholderConfigurer propertyPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}

	@Bean
	public DefaultMessageService defaultMessageService() {
		log.info("key = {}, secret = {}, url = {}", apiKey, apiSecret, smsUrl);
		return NurigoApp.INSTANCE.initialize(apiKey, apiSecret, smsUrl);
	}

}
