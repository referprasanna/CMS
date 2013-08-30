// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.aosta.book.web;

import com.aosta.book.BookFail;
import com.aosta.book.BookOrder;
import com.aosta.book.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<BookFail, String> ApplicationConversionServiceFactoryBean.getBookFailToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.aosta.book.BookFail, java.lang.String>() {
            public String convert(BookFail bookFail) {
                return new StringBuilder().append(bookFail.getAddr()).toString();
            }
        };
    }
    
    public Converter<Long, BookFail> ApplicationConversionServiceFactoryBean.getIdToBookFailConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.aosta.book.BookFail>() {
            public com.aosta.book.BookFail convert(java.lang.Long id) {
                return BookFail.findBookFail(id);
            }
        };
    }
    
    public Converter<String, BookFail> ApplicationConversionServiceFactoryBean.getStringToBookFailConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.aosta.book.BookFail>() {
            public com.aosta.book.BookFail convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), BookFail.class);
            }
        };
    }
    
    public Converter<BookOrder, String> ApplicationConversionServiceFactoryBean.getBookOrderToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.aosta.book.BookOrder, java.lang.String>() {
            public String convert(BookOrder bookOrder) {
                return new StringBuilder().append(bookOrder.getBookName()).append(' ').append(bookOrder.getDeliverAddress()).toString();
            }
        };
    }
    
    public Converter<Long, BookOrder> ApplicationConversionServiceFactoryBean.getIdToBookOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.aosta.book.BookOrder>() {
            public com.aosta.book.BookOrder convert(java.lang.Long id) {
                return BookOrder.findBookOrder(id);
            }
        };
    }
    
    public Converter<String, BookOrder> ApplicationConversionServiceFactoryBean.getStringToBookOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.aosta.book.BookOrder>() {
            public com.aosta.book.BookOrder convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), BookOrder.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getBookFailToStringConverter());
        registry.addConverter(getIdToBookFailConverter());
        registry.addConverter(getStringToBookFailConverter());
        registry.addConverter(getBookOrderToStringConverter());
        registry.addConverter(getIdToBookOrderConverter());
        registry.addConverter(getStringToBookOrderConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
