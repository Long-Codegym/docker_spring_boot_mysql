package com.repository;

import com.model.Account;
import com.model.Bill;
import com.model.UserProfile;
import com.model.dto.AccountCCDVDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Repository
public interface IBillRepository extends JpaRepository<Bill, Long> {
    List<Bill> getAllByAccountCCDV_Id(long id);
//    @Query(nativeQuery = true, value = "select * from bill  where accountccdv_id= :accountccdv_id  ")
//    List<Bill> getAllBillByAccountCCDV(@Param("accountccdv_id") long accountccdv_id);

    @Query(nativeQuery = true, value = "select * from bill  where (status_id= 5 or status_id= 4 or status_id = 6)and accountCCDV_id=:id and ( date_start   between  :#{#dayNow} and DATE_ADD(:#{#dayNow}, INTERVAL 7 DAY) )")
    Optional<List<Bill>> getAllBill7DayByID(@Param("id") long id,@Param("dayNow")String dayNow);

    Optional<List<Bill>> getAllByAccountCCDV_Id(long accountId, Sort sort);
    Optional<List<Bill>> getBillByAccountUser_Id(long accountId, Sort sort);
    @Query(value = "select b from Bill b order by b.id desc ")
    List<Bill> getAllBills();
    @Query(value = "select b from Bill b join Status s on b.status.id = s.id " +
            "where s.id = 4 order by b.id desc ")
    List<Bill> getAllBilStatusWait();
    @Query(value = "select b from Bill b join Status s on b.status.id = s.id " +
            "where s.id = 5 order by b.id desc ")
    List<Bill> getAllBillStatusRecevied();
    @Query(value = "select b from Bill b join Status s on b.status.id = s.id " +
            "where s.id = 7 order by b.id desc ")
    List<Bill> getAllBilStatusComplete();
    @Query(value = "select b from Bill b join Status s on b.status.id = s.id " +
            "where s.id = 7 or s.id = 8 or s.id = 9 or s.id = 10  order by b.id desc ")
    List<Bill> getAllBilStatusCancel();


    //lay ra 1 list bill cua nguoi dung
    @Query(nativeQuery = true, value = "select * from bill  where account_user_id= :account_user_id  ")
    List<Bill> getAllBillByAccountUser(@Param("account_user_id") long account_user_id);
//    @Query(nativeQuery = true, value = "select * from bill  where account_user_id= :account_user_id and id= :id ")
//    Bill getBillDetailByAccountUser(@Param("account_user_id") long account_user_id, @Param("id") long id);

    @Query(nativeQuery = true, value = "SELECT * FROM Bill b JOIN Status s ON  b.status_id = s.id" +
            " WHERE (s.id = :idStatus) OR (s.id IN (7, 8, 9, 10) AND :idStatus = 7)" +
            " ORDER BY b.id DESC")
    List<Bill> findBillsByStatusIds(@Param("idStatus") Long idStatus);




}

