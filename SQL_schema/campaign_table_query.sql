select campaign.contact_id as "Contact ID", campaign.company_name as "Company Name", campaign.goal as "Goal", campaign.pledged as "Pledged"
from campaign
where campaign.pledged >= campaign.goal