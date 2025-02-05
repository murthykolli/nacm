package com.nookandcove.dao;

import java.util.List;

import com.nookandcove.model.RegistrantFinishingTouchesContributedProductsInfoSaving;

@SuppressWarnings("rawtypes")
public interface RegistrantFinishingTouchesContributedProductsInfoSavingDAO {
	
	public void save(RegistrantFinishingTouchesContributedProductsInfoSaving transientInstance);
	
	public List registryFinishingTouchesContributedDataCheckInDB(long registrantUserId, long adminRegFTFSpecsSavingId);
	public RegistrantFinishingTouchesContributedProductsInfoSaving registryFinishingTouchesContributedDataTakeFromDB(long registrantUserId, long adminRegFTFSpecsSavingId);
	public List registryFinishingTouchesContributedTotalDataTakeFromDB(long registrantUserId);
	public List registryMyAccountFTContributedDataDisplay(long registrantUserId);
	public RegistrantFinishingTouchesContributedProductsInfoSaving registryFinishingTouchesContributedDataEditInDB(long registrantUserId, long regiFTCotributedProductSavingId);
	public List regFinishingTouchesContributedLandingDeleteDataCheckInDB(long registrantUserId, long regiFTCotributedProductSavingId);
	public List registryFinishingTouchesContributedMyAccountsDataDisplay(long registrantUserId);
	
	public List guestRegAdminFTContributedGiftReceivedData(String contributedStatusRef);
	public RegistrantFinishingTouchesContributedProductsInfoSaving registryFTGiftReceivedContributedPaymentDataTakeFromDB(long regiFTCotributedProductSavingId);
	
	public List adminFTContributedPricesListFromInDB(long productInfoSavingId, String productsPrice);
	public RegistrantFinishingTouchesContributedProductsInfoSaving adminFTContributedPricesUpdatedInDB(long productInfoSavingId, String productsPrice);
	
	public void delete(RegistrantFinishingTouchesContributedProductsInfoSaving persistentInstance);	
	public RegistrantFinishingTouchesContributedProductsInfoSaving findById(long id);	
	public List<RegistrantFinishingTouchesContributedProductsInfoSaving> findByExample(RegistrantFinishingTouchesContributedProductsInfoSaving instance);	
	public List findByProperty(String propertyName, Object value);	
	public List findAll();	
	public RegistrantFinishingTouchesContributedProductsInfoSaving merge(RegistrantFinishingTouchesContributedProductsInfoSaving detachedInstance);	
	public void attachDirty(RegistrantFinishingTouchesContributedProductsInfoSaving instance);	
	public void attachClean(RegistrantFinishingTouchesContributedProductsInfoSaving instance);
}
