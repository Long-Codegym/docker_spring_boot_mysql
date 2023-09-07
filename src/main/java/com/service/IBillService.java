package com.service;

import com.model.Account;
import com.model.Bill;

import java.util.List;

public interface IBillService extends ICrudService<Bill>{
    List<Bill> getAllByAccountCCDV_Id(long id);
//    List<?> getAccountUserIdAndBillIdByAccountCCDVID(long id);


}
