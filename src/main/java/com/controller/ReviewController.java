package com.controller;

import com.model.Review;
import com.service.IReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/reviews")
public class ReviewController {
    @Autowired
    IReviewService iReviewService;

    @GetMapping("/allActiveByCCDV_Username/{username}")
    ResponseEntity<List<Review>> getAllActiveByAccountCCDV_Username_Desc(@PathVariable String username) {
        return new ResponseEntity<>(iReviewService.getAllActiveByAccountCCDV_Username_Desc(username), HttpStatus.OK);
    }

    @GetMapping("/isAbleToReview")
    ResponseEntity<Boolean> isAbleToReview(@RequestParam long tourID, @RequestParam long userId) {
        return new ResponseEntity<>(iReviewService.isAbleToReview(tourID, userId), HttpStatus.OK);
    }

    @PostMapping("/sendReview")
    ResponseEntity<Review> sendReview(@RequestBody Review review) {
        review.setDate(new Date());
        review.setIsActive(true);
        return new ResponseEntity<>(iReviewService.create(review), HttpStatus.OK);
    }
}
