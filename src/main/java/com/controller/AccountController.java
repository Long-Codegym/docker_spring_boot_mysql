package com.controller;

import com.model.Account;
import com.model.Role;
import com.model.UserProfile;
import com.repository.IRoleRepository;
import com.service.IAccountService;
import com.service.IRoleService;
import com.service.IStatusService;
import com.service.IUserProfileService;
import com.sun.org.apache.xerces.internal.util.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("*")
@RestController
@RequestMapping("/accounts")
public class AccountController {
    @Autowired
    IAccountService iAccountService;
    @Autowired
    IRoleService iRoleService;
    @Autowired
    IStatusService iStatusService;

    @Autowired
    IUserProfileService iUserProfileService;
    @PostMapping("/registerUser")
    ResponseEntity<Account> createAccountUser(@RequestBody Account account) {
        account.setAvatar("https://cdn0.iconfinder.com/data/icons/avatar-basic-colors-doodle-1/91/Avatar__Basic_Doodle_C-42-512.png");
        Role role = iRoleService.findByName("ROLE_USER");
        account.setRole(role);
        Status status = iStatusService;
        account.setStatus(status);
        iAccountService.create(account);
        return new ResponseEntity<>(account, HttpStatus.OK);
    }
//    @PostMapping("/registerCCDV")
//    ResponseEntity<Account> createAccountCCDV(@RequestBody Account account, @RequestBody UserProfile userProfile){
//        Role role = iRoleService.getById(3);
//        account.setRole(role);
//
//    }

}

