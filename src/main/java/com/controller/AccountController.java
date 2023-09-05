package com.controller;

import com.cofig.filter.JwtAuthenticationFilter;
import com.model.*;
import com.model.dto.AccountRegisterDTO;
import com.model.dto.AccountToken;
import com.model.messageErorr.ValidStatus;
import com.service.IAccountService;
import com.service.IRoleService;
import com.service.IStatusService;
import com.service.IUserProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

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
    ResponseEntity<AccountRegisterDTO> createAccountUser(@RequestBody AccountRegisterDTO accountDTO) {
        if (iAccountService.findByUsername(accountDTO.getUsername()).isPresent()){
            return new ResponseEntity<>(new AccountRegisterDTO(ValidStatus.NAME_EXISTED),HttpStatus.OK);
        }
        if (iAccountService.findByEmail(accountDTO.getEmail()).isPresent()){
            return new ResponseEntity<>(new AccountRegisterDTO(ValidStatus.EMAIL_EXIST),HttpStatus.OK);
        }
        Account account = new Account();
        account.setUsername(accountDTO.getUsername());
        account.setEmail(accountDTO.getEmail());
        account.setPassword(accountDTO.getPassword());
        account.setNickName(accountDTO.getNickName());
        accountDTO.setAvatar("https://cdn0.iconfinder.com/data/icons/avatar-basic-colors-doodle-1/91/Avatar__Basic_Doodle_C-42-512.png");
        account.setAvatar(accountDTO.getAvatar());

        Role role = iRoleService.findByName("ROLE_USER");
        accountDTO.setRole(role);
        account.setRole(accountDTO.getRole());

        Status status = iStatusService.getById(3);
        accountDTO.setStatus(status);
        account.setStatus(accountDTO.getStatus());
        account.setIsActive(true);

        iAccountService.create(account);
        long accountId = account.getId();

        return new ResponseEntity<>(new AccountRegisterDTO(ValidStatus.SUCCESSFULL,accountId), HttpStatus.OK);
    }
    @PostMapping("/registerUserAndProfile")
    ResponseEntity<AccountRegisterDTO> createAccountUserAndProfile(@RequestBody AccountRegisterDTO accountDTO) {
        if (iAccountService.findByUsername(accountDTO.getUsername()).isPresent()){
            return new ResponseEntity<>(new AccountRegisterDTO(ValidStatus.NAME_EXISTED),HttpStatus.OK);
        }
        if (iAccountService.findByEmail(accountDTO.getEmail()).isPresent()){
            return new ResponseEntity<>(new AccountRegisterDTO(ValidStatus.EMAIL_EXIST),HttpStatus.OK);
        }
        Account account = new Account();
        account.setUsername(accountDTO.getUsername());
        account.setEmail(accountDTO.getEmail());
        account.setPassword(accountDTO.getPassword());
        account.setNickName(accountDTO.getNickName());
        accountDTO.setAvatar("https://cdn0.iconfinder.com/data/icons/avatar-basic-colors-doodle-1/91/Avatar__Basic_Doodle_C-42-512.png");
        account.setAvatar(accountDTO.getAvatar());
        Role role = iRoleService.findByName("ROLE_USER");
        accountDTO.setRole(role);
        account.setRole(accountDTO.getRole());
        Status status = iStatusService.getById(3);
        accountDTO.setStatus(status);
        account.setStatus(accountDTO.getStatus());
        account.setIsActive(true);
        iAccountService.create(account);
        long id = account.getId();
        UserProfile userProfile = new UserProfile();
        userProfile.setAccount(iAccountService.getById(id));
        userProfile.setDateCreate(new Date());
        iUserProfileService.create(userProfile);

        return new ResponseEntity<>(new AccountRegisterDTO(ValidStatus.SUCCESSFULL), HttpStatus.OK);
    }
}

