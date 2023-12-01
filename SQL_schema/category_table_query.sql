SELECT category.category_id as "Category ID", category.category as "Category", campaign.outcome as "Outcome", campaign.company_name as "Company Name"
FROM category
	JOIN campaign on campaign.category_id=category.category_id
WHERE campaign.outcome= 'successful';