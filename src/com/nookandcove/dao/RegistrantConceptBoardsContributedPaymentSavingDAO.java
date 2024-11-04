package com.nookandcove.dao;

import java.sql.Timestamp;
import java.util.List;

import com.nookandcove.model.RegistrantConceptBoardsContributedPaymentSaving;

@SuppressWarnings("rawtypes")
public interface RegistrantConceptBoardsContributedPaymentSavingDAO {
	
	public void save(RegistrantConceptBoardsContributedPaymentSaving transientInstance);
	
	public List registryConceptBoardsContributedPriceCheckInDB(long registrantUserId, long cbContributedProductSavingId);
	public RegistrantConceptBoardsContributedPaymentSaving registryConceptBoardsContributedPriceTakeFromDB(long registrantUserId, long cbContributedProductSavingId);
	public List registryConceptBoardsContributedPaymentStatusCheckInDB(long registrantUserId, long cbContributedProductSavingId);
	public RegistrantConceptBoardsContributedPaymentSaving registryConceptBoardsContributedPaymentStatusTakeFromDB(long registrantUserId, long cbContributedProductSavingId);
	public List registryConceptBoardsPaymentDataCheckInDB(long registrantUserId, long cbContributedProductSavingId);
	public RegistrantConceptBoardsContributedPaymentSaving registryConceptBoardsPaymentDataTakeFromDB(long registrantUserId, long cbContributedProductSavingId);
	public List registryConceptBoardsContributedTotalCartCount(long registrantUserId);
	
	public List registryCBContributedAddCartPaymentDataCheckInDB(long registrantUserId, long cbContributedPaymentSavingId);
	public RegistrantConceptBoardsContributedPaymentSaving registryCBContributedAddCartPaymentDataTakeFromDB(long registrantUserId, long cbContributedPaymentSavingId);
	public int regConceptBoardsContributedPaymentInfoUpdateInDB(long registrantUserId, long regPaymentInfoSavingId, String returnType, Timestamp currentDate);
	public List registryMyAccountCBPaymentContributedPriceFromDB(long registrantUserId, long cbContributedProductSavingId);
	public List registryMyAccountCBPaymentContributedInBOTDPriceFromDB(long registrantUserId, long cbContributedProductSavingId);
	public List regConceptBoardsContributedMyAccountDataDisplay(long registrantUserId);
	public List registrantStoreCreditCBContributeRemoveDuplicateRows(long registrantUserId);
	public List registrantStoreCreditCBContributeAmountCheckingInDB(long registrantUserId, long regSelectedProdsId);
	public List registrantGiftReceivedCBContributeRemoveDuplicateRows(long registrantUserId);
	public List registrantGiftReceivedCBContributeAmountCheckingInDB(long registrantUserId, long regSelectedProdsId);
	public RegistrantConceptBoardsContributedPaymentSaving registrantCBContributeGiftReceivedStatusFromDB(long registrantUserId, long regSelectedProdsId);
	public List registryCBContributedGRConToCreditDataList(long registrantUserId, long regSelectedProdsId, String contributedStatusRef);
	
	public List registryAdminCBContributedGiftReceivedDataTakeFromDB(String contributedStatusRef);
	public List registryCBGiftReceivedContributedPaymentInfoList(long cbContributedProductsSavingId);
	public RegistrantConceptBoardsContributedPaymentSaving registryCBGiftReceivedContributedPaymentDataTakeFromDB(long cbContributedProductsSavingId);
	
	public void delete(RegistrantConceptBoardsContributedPaymentSaving persistentInstance);	
	public RegistrantConceptBoardsContributedPaymentSaving findById(long id);	
	public List<RegistrantConceptBoardsContributedPaymentSaving> findByExample(RegistrantConceptBoardsContributedPaymentSaving instance);	
	public List findByProperty(String propertyName, Object value);	
	public List findAll();	
	public RegistrantConceptBoardsContributedPaymentSaving merge(RegistrantConceptBoardsContributedPaymentSaving detachedInstance);	
	public void attachDirty(RegistrantConceptBoardsContributedPaymentSaving instance);	
	public void attachClean(RegistrantConceptBoardsContributedPaymentSaving instance);
}
