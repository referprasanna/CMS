// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.aosta.book;

import com.aosta.book.BookOrder;

privileged aspect BookOrder_Roo_JavaBean {
    
    public String BookOrder.getBookName() {
        return this.BookName;
    }
    
    public void BookOrder.setBookName(String BookName) {
        this.BookName = BookName;
    }
    
    public String BookOrder.getDeliverAddress() {
        return this.DeliverAddress;
    }
    
    public void BookOrder.setDeliverAddress(String DeliverAddress) {
        this.DeliverAddress = DeliverAddress;
    }
    
}
