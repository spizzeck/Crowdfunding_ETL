SELECT contacts.contact_id as "Contact ID", campaign.company_name as "Company Name", campaign.outcome as "Outcome"
FROM contacts
	JOIN campaign on campaign.contact_id=contacts.contact_id
WHERE campaign.outcome= 'failed';