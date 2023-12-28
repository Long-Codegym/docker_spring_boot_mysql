package com.controller;

import com.model.Account;
import com.model.Message;
import com.service.IAccountService;
import com.service.IMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.nio.file.Path;
import java.util.List;

@CrossOrigin("*")
@Controller
@RequestMapping("/message")
public class MessageController {
    @Autowired
    IMessageService iMessageService;
    @Autowired
    IAccountService iAccountService;

    @GetMapping("/allBySenderAndReceiver/{receiverId}")
    public ResponseEntity<List<Message>> getAllBySenderAndReceiver(@PathVariable Long receiverId) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal(); // lấy từ token gửi lên
        Account account = iAccountService.findByUsername(userDetails.getUsername()).orElseGet(null);
        return new ResponseEntity<>(iMessageService.getAllBySenderAndReceiver(account.getId(), receiverId), HttpStatus.OK);
    }

    @PostMapping("/setReadMessage/{id}")
    public ResponseEntity<Message> setReadMessage(@PathVariable Long id) {
        return new ResponseEntity<>(iMessageService.setReadMessage(id), HttpStatus.OK);
    }
//    @PostMapping("/hi/{senderId}/{receiverId}")
//    public ResponseEntity<String> hiMessage(@PathVariable long senderId, @PathVariable long receiverId) {
//        Message message = new Message();
//        message.setSender(iAccountService.getById(senderId));
//        message.setReceiver(iAccountService.getById(receiverId));
//        message.setMessage("Hi");
//
//        iMessageService.create(message);
//        return new ResponseEntity<>(HttpStatus.OK);
//    }
    @GetMapping("/getAllNotifications/{userId}")
    public ResponseEntity<List<Message>> getAllNotifications(@PathVariable long userId) {
        return new ResponseEntity<>(iMessageService.getAllNotifications(userId), HttpStatus.OK);
    }

    @PostMapping("/confirmReadNotification/{notificationId}")
    public ResponseEntity<Message> confirmReadNotification(@PathVariable long notificationId) {
        return new ResponseEntity<>(iMessageService.confirmReadNotification(notificationId), HttpStatus.OK);
    }

    @PostMapping("/confirmReadAllNotifications/{userId}")
    public ResponseEntity<Void> confirmReadAllNotifications(@PathVariable long userId) {
        iMessageService.confirmReadAllNotifications(userId);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
