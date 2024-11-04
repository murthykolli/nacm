package com.nookandcove.dao;

import java.util.List;

import com.nookandcove.model.ReferralVisaGiftCardsInfoSaving;

@SuppressWarnings("rawtypes")
public interface ReferralVisaGiftCardsInfoSavingDAO {
	
	public void save(ReferralVisaGiftCardsInfoSaving transientInstance);	
	public List selectedReferralVisaGiftCardsInfoVerification(long referralUsersInfoSavingId, long registryUserId);	
	public ReferralVisaGiftCardsInfoSaving updatedReferralVisaGiftCardsInfoInDataBasa(long referralUsersInfoSavingId, long registryUserId);
	public List selectedReferralVisaGiftCardsInfoDisplay(long referralUsersInfoSavingId);
	public List selectedReferralVisaGiftCardsInfoTakeFromDB(long referralUsersInfoSavingId);
	public ReferralVisaGiftCardsInfoSaving referralVisaGiftCardsInfoUpdateinDB(long refVisaGiftCardsSavingId);
	public List adminReferralVisaGiftCardsInfoDisplay();
	public void delete(ReferralVisaGiftCardsInfoSaving persistentInstance);	
	public ReferralVisaGiftCardsInfoSaving findById(long id);
	public List<ReferralVisaGiftCardsInfoSaving> findByExample(ReferralVisaGiftCardsInfoSaving instance);	
	public List findByProperty(String propertyName, Object value);	
	public List findAll();	
	public ReferralVisaGiftCardsInfoSaving merge(ReferralVisaGiftCardsInfoSaving detachedInstance);
	public void attachDirty(ReferralVisaGiftCardsInfoSaving instance);	
	public void attachClean(ReferralVisaGiftCardsInfoSaving instance);	
	
}
