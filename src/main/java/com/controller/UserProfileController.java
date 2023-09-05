package com.controller;

import com.model.*;
import com.model.dto.AccountCCDVDTO;
import com.model.dto.UserDTO;
import com.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@CrossOrigin("*")
@RestController
@RequestMapping("/userDetail")
public class UserProfileController {
    @Autowired
    DateService dateService;
    @Autowired
    IRoleService iRoleService;
    @Autowired
    IAccountService iAccountService;
    @Autowired
    IUserProfileService iUserProfileService;
    @Autowired
    IZoneService iZoneService;
    @Autowired
    ISupplyService iSupplyService;

    @PostMapping("/registerCCDV/{id}")
    ResponseEntity<UserProfile> createAccountCCDV(@PathVariable Long id, @RequestBody UserProfile userProfile) {
        Role role = iRoleService.getById(3);
        Account account = iAccountService.getById(id);
        account.setRole(role);


        Zone zone = iZoneService.getById(userProfile.getZone().getId());
        userProfile.setZone(zone);

        userProfile.setIsVIP(false);
        userProfile.setIsActive(true);
        userProfile.setAccount(account);
        iUserProfileService.create(userProfile);
        return new ResponseEntity<>(userProfile, HttpStatus.OK);
    }
    @PostMapping("/registerCCDVs/{id}")
    ResponseEntity<UserProfile> getUserProfile(@PathVariable Long id){
        UserProfile userProfile1 = iUserProfileService.getByAccountId(id);
      return new ResponseEntity<>(userProfile1,HttpStatus.OK);
    }

    @GetMapping("/newestCCDVs/{qty}")
    public ResponseEntity<List<UserDTO>> getRecentCCDVs (@PathVariable int qty) {
        return new ResponseEntity<>(iUserProfileService.getNewestCCDVs(qty), HttpStatus.OK);
    }

    @PostMapping("/searchBySupplies")
    public ResponseEntity<List<UserDTO>> searchBySupplies(@RequestBody List<Supply> supplies) {
        return new ResponseEntity<>(iUserProfileService.getBySupplies(supplies), HttpStatus.OK);
    }
    @PostMapping("/get4MaleAnd8FemaleCCDVs")
    public ResponseEntity<List<AccountCCDVDTO>> get4MaleCCDVs(){
        return new ResponseEntity<>(iUserProfileService.get4MaleAnd8FemaleCCDVs(),HttpStatus.OK);
    }
}

