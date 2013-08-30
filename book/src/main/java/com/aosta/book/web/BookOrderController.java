package com.aosta.book.web;
import com.aosta.book.BookOrder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/bookorders")
@Controller
@RooWebScaffold(path = "bookorders", formBackingObject = BookOrder.class)
public class BookOrderController {
}
