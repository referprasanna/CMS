package com.aosta.book;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class BookOrder {

    /**
     */
    private String BookName;

    /**
     */
    @Size(max = 300)
    private String DeliverAddress;
}
