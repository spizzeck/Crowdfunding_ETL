SELECT subcategory.subcategory_id as "Subcategory ID", subcategory.subcategory as "Category", campaign.outcome as "Outcome", campaign.company_name as "Company Name"
FROM subcategory
	JOIN campaign on campaign.subcategory_id=subcategory.subcategory_id
WHERE campaign.outcome= 'canceled';