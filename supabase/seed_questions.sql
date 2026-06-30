-- Generated from pab-s1-quiz.xlsx. Safe to run multiple times.
begin;

insert into public.questions (
  id,
  source,
  original_number,
  prompt,
  options,
  correct_letters
)
values
('1', 's1', '1', 'DreamHouse Realty has a policy that requires the phone number on Contact to be deleted when
the Do Not Call checkbox is checked Which automation tool should the app builder recommend?', '[{"letter": "A", "text": "If-then rule"}, {"letter": "B", "text": "Validation rule"}, {"letter": "C", "text": "Quick action"}, {"letter": "D", "text": "Flow"}]'::jsonb, array['D']::text[]),
('2', 's1', '2', 'A production org includes custom objects containing confidential Information. A sandbox is
needed that includes data records, excludes all of the Confidential Objects, and can be refreshed
weekly. Which steps should an app builder take to meet these requirements?', '[{"letter": "A", "text": "Create a Developer Pro Sandbox and schedule Data Loader to download selected Object data weekly."}, {"letter": "B", "text": "Create a Full Copy Sandbox and use a sandbox template."}, {"letter": "C", "text": "Create a Partial Copy Sandbox and use a sandbox template."}, {"letter": "D", "text": "Create a Developer Sandbox and schedule Data Loader to download selected Object data weekly."}]'::jsonb, array['C']::text[]),
('3', 's1', '3', 'Universal Containers wants sales reps to get permission from their managers before deleting
Opportunities. What can be used to meet these requirements?', '[{"letter": "A", "text": "Two-step approval process"}, {"letter": "B", "text": "Approval process and flow with a scheduled path"}, {"letter": "C", "text": "Schedule-triggered flow with Submit for Approval action"}, {"letter": "D", "text": "Approval process with a record triggered flow"}]'::jsonb, array['D']::text[]),
('4', 's1', '4', 'Northern Trail Outfitters wants the field sales team to only see the accounts that they Own.
Separate North American and European marketing teams should only see Accounts in their
respective regions. The inside sales team needs to see all accounts In Salesforce. How can this be
accomplished?', '[{"letter": "A", "text": "Set the Organization-Wide Default to Public for accounts. Create profiles for each marketing team, and create an Inside Sales Team role that is at the top of the Role Hierarchy."}, {"letter": "B", "text": "Set the Organization Wide Default to Public for accounts. Create criteria-based sharing rules for Each marketing team, and create an Inside Sales Team permission set with the \"View All\" setting for Accounts."}, {"letter": "C", "text": "Set the Organization-Wide Default to Private for accounts. Create permission sets for each marketing Team, and create an Inside Sales Team profile with the \"View All\" setting for accounts."}, {"letter": "D", "text": "Set the Organization Wide Default to Private for accounts. Create criteria-based sharing rules for Each marketing team, and create an Inside Sales Team profile with the \"View All\" setting for Accounts."}]'::jsonb, array['D']::text[]),
('5', 's1', '5', 'Sales reps at Universal Containers create multiple quotes per opportunity. Which automation
tool should an app builder recommend to delete rejected quotes?', '[{"letter": "A", "text": "Approval process"}, {"letter": "B", "text": "Einstein Next Best Action"}, {"letter": "C", "text": "Flow"}, {"letter": "D", "text": "Validation rule"}]'::jsonb, array['C']::text[]),
('6', 's1', '6', 'An app builder wants to create a custom Sync button on Account that will Call a Lightning Web
Component that connects with an external system. T his action Should only be available if the custom
Status field is set to Ready to Syn What should an app builder use to add this functionality to an
Account record page?', '[{"letter": "A", "text": "Custom link"}, {"letter": "B", "text": "Formula field"}, {"letter": "C", "text": "Dynamic action"}, {"letter": "D", "text": "AppExchange product"}]'::jsonb, array['C']::text[]),
('7', 's1', '7', 'Universal Containers uses a custom Object called Projects. When managers Assign projects, they
set a custom field on the Project record called Estimated Hours. Once set, users should be able to
decrease but not increase the value. How can an app builder meet this requirement?', '[{"letter": "A", "text": "Create a validation rule that uses the ISCHANGED function."}, {"letter": "B", "text": "Create a formula default value for the custom fiel"}, {"letter": "C", "text": "Create a validation rule that uses the PRIORVALUE function."}, {"letter": "D", "text": "Create a formula field that uses the PREVGROUPVAL function."}]'::jsonb, array['C']::text[]),
('8', 's1', '8', 'What should an app builder consider when choosing a template for a new Lightning record
page?', '[{"letter": "A", "text": "Page structure will automatically adapt to the device being used to View the record page."}, {"letter": "B", "text": "To View the record page, users need \"View All Data\" permissions for the Object."}, {"letter": "C", "text": "The template is unable to be changed after the initial save."}, {"letter": "D", "text": "Select a new template for each type of device users use to View the record page."}]'::jsonb, array['A']::text[]),
('9', 's1', '9', 'Dreamhouse Realty (DR) has many properties for sale and wants to Identify the highest value of
all offer records on each Property_ record Which solution should the app builder use to meet DR''s
needs provided that there is a Master-detail relationship between the objects?', '[{"letter": "A", "text": "Roll-up Summary"}, {"letter": "B", "text": "mary"}, {"letter": "C", "text": "Text Area (Long)"}, {"letter": "D", "text": "Multi-select Picklist"}, {"letter": "E", "text": "Rich Text Area"}]'::jsonb, array['A']::text[]),
('10', 's1', '10', 'An app builder needs to deploy a new account detail page layout from Sandbox to production.
Which three components should an app builder include in the Change Set to ensure it Deploys
successfully and visually as expected?
Choose 3 answers', '[{"letter": "A", "text": "Detail page layout"}, {"letter": "B", "text": "Custom actions"}, {"letter": "C", "text": "System administrator profile"}, {"letter": "D", "text": "Custom fields"}, {"letter": "E", "text": "Lightning App Builder"}]'::jsonb, array['A', 'D', 'E']::text[]),
('11', 's1', '11', 'Which three options are available when activating a Lightning page from The Lightning App
Builder?
Choose 3 answers', '[{"letter": "A", "text": "Assign the page to a combination of apps and permission sets."}, {"letter": "B", "text": "Assign the page to a combination of apps and profiles."}, {"letter": "C", "text": "Make the page the default homepage for specific apps."}, {"letter": "D", "text": "Make the page the default homepage for specific roles."}, {"letter": "E", "text": "Make the page the org default."}]'::jsonb, array['B', 'C', 'E']::text[]),
('12', 's1', '12', 'To increase adoption, Universal Containers is proposing changes to its Salesforce data model to
allow easier visibility for sales reps into key metrics. The Proposal has three custom objects related to
the Account object, one with a master- Detail, and two that are not. Each of these objects has 15
fields they would like to Summarize on the Account object. What are two considerations for this
proposal?
Choose 2 answers', '[{"letter": "A", "text": "Roll-up summaries are limited to master-detail relationships."}, {"letter": "B", "text": "Roll-up summaries allow MAX, MIN, SUM, COUNT, and AVG."}, {"letter": "C", "text": "An Object can have 25 roll-up summaries."}, {"letter": "D", "text": "An Object can have 20 Object references."}]'::jsonb, array['A', 'C']::text[]),
('13', 's1', '13', 'Universal Containers has a requirement that an opportunity should have a field ing the value of its
associated account''s billing state. This value should be static After the opportunity has been create
What is the recommended solution to configure this automation behavior?', '[{"letter": "A", "text": "Flow"}, {"letter": "B", "text": "Apex"}, {"letter": "C", "text": "Roll-up summary field"}, {"letter": "D", "text": "Formula field"}]'::jsonb, array['D']::text[]),
('14', 's1', '14', 'Universal Containers has several new fields they''ve requested forthe Opportunity Product
object. What should an app builder be able to configure using a formula field?', '[{"letter": "A", "text": "A hyperlink to the parent Account of the parent Opportunity."}, {"letter": "B", "text": "A Rich Text area field that uses HTML to bold certain characters."}, {"letter": "C", "text": "A combination of the Opportunitfs Text and a Description fields."}, {"letter": "D", "text": "A mix of functions and concatenation of IO Account fields and IO Opportunity fields."}]'::jsonb, array['A']::text[]),
('15', 's1', '15', 'DreamHouse Realty (DHR) recently acquired Cloud Kicks (CK), a company That is still on
Salesforce Classi DHR is keeping the CK Salesforce org; however, it Will migrate this org to Lightning
Experience. Where should the app builder find prebuilt resources to help with this project and
Overall adoption?', '[{"letter": "A", "text": "AppExchange"}, {"letter": "B", "text": "Flow Builder"}, {"letter": "C", "text": "Lightning Object Creator"}, {"letter": "D", "text": "Import Wizard"}]'::jsonb, array['A']::text[]),
('16', 's1', '16', 'Universal Containers uses a custom picklist field Account Region on the Account recor They
want this region to be reflected on all related contact records And stay in sync if the value of this field
changes on the Account. How should an app builder meet this requirement?', '[{"letter": "A", "text": "Create a picklist field called ''Account Region'' on Contact Object > Create a Lookup Relationship to Update this field if the Account Region field on the Account is change"}, {"letter": "B", "text": "Create a formula field on the Contact Object > Set the value of the formula to ISPICKVAL"}, {"letter": "C", "text": "Create a text field called ''Account Region'' on Contact Object > Create a Lookup Relationship to Update this field if the Account Region field on the Account is change"}, {"letter": "D", "text": "Create a formula field on the Contact Object > Set the value of the formula to TEXT (Account.Account Region_e)."}]'::jsonb, array['D']::text[]),
('17', 's1', '17', 'DreamHouse Realty wants to track how many lifts are being installed into Customer garages.
The To Be Installed custom checkbox field on the custom Lift Object should be checked and an
external system should be notified via an outbound Message the next day when a lift is sol Which
automation tool should be used to complete this task?', '[{"letter": "A", "text": "Approval process"}, {"letter": "B", "text": "Validation rule"}, {"letter": "C", "text": "Flow"}, {"letter": "D", "text": "Assignment rule"}]'::jsonb, array['C']::text[]),
('18', 's1', '18', 'Cloud Kicks asked the app builder to insert a list of 25,000 records using Deduplication for the
Delivery custom object. Which tool should be used?', '[{"letter": "A", "text": "Import Wizard"}, {"letter": "B", "text": "Data Loader"}, {"letter": "C", "text": "Lightning Object Creator"}, {"letter": "D", "text": "Schema Builder"}]'::jsonb, array['B']::text[]),
('19', 's1', '19', 'Northern Trail Outfitters has two custom objects that are part of a master- Detail relationship.
What determines the ownership and sharing access of the detail record?', '[{"letter": "A", "text": "The owner is set independently on the detail Object''s settings."}, {"letter": "B", "text": "The default owner is set in the parent object''s settings."}, {"letter": "C", "text": "The Owner field on the Detail record"}, {"letter": "D", "text": "The Owner field on the Master record"}]'::jsonb, array['D']::text[]),
('20', 's1', '20', 'Universal Containers has a custom Object that holds over 100 fields. The App builder wants to
break up the fields into separate tabs on the lightning page. Which Lightning component is most
appropriate to fulfil this requirement?', '[{"letter": "A", "text": "Highlights panel"}, {"letter": "B", "text": "Record detail"}, {"letter": "C", "text": "Field section"}, {"letter": "D", "text": "Accordian"}]'::jsonb, array['D']::text[]),
('21', 's1', '21', 'An app builder is tasked with adding key performance indicators on client Pages. They want to
see a summary of the number of open Opportunities and the Number of won Opportunities for each
Account. Where should the app builder go to build these new rollups?', '[{"letter": "A", "text": "Account Object"}, {"letter": "B", "text": "Lightning Object Creator"}, {"letter": "C", "text": "Opportunity Object"}, {"letter": "D", "text": "Lightning App Builder"}]'::jsonb, array['A']::text[]),
('22', 's1', '22', 'Shipments at Cloud Kicks (CK) are created and updated by the warehouse staff in a Shipping
application. The information needs to be pushed into Salesforce on a regular Basis. CK''s app builder
creates a custom Object called Delivery_c to track the Information. How can the app builder prevent
creating duplicate delivery records and update the
Correct existing records when migrating data from the shipping application?', '[{"letter": "A", "text": "Use the Import Wizard and match on the tracking number."}, {"letter": "B", "text": "Create a unique External ID field and use Dataloader."}, {"letter": "C", "text": "Use the Import Wizard and match on the Salesforce I"}, {"letter": "D", "text": "Create a duplicate/match rule and use Dataloader."}]'::jsonb, array['B']::text[]),
('23', 's1', '23', 'Dreamhouse Realty requires that field value changes for certain fields such As Asking Price_c
and Real Estate Agent on their House_c custom Object up prominently on Chatter. Which Chatter
feature should the app builder use?', '[{"letter": "A", "text": "Topics"}, {"letter": "B", "text": "Feed Tracking"}, {"letter": "C", "text": "Pin Field"}, {"letter": "D", "text": "Publisher Actions"}]'::jsonb, array['B']::text[]),
('24', 's1', '24', 'Northern Trail Outfitters uses a custom Object to track travel requests. Rangers want to have
automatic posts on a record whenever a travel request has been approving Which feature should be
used to accomplish this?', '[{"letter": "A", "text": "Auto-response rule"}, {"letter": "B", "text": "Feed tracking"}, {"letter": "C", "text": "Approval process"}, {"letter": "D", "text": "Feed quick action"}]'::jsonb, array['B']::text[]),
('25', 's1', '25', 'Universal Containers uses a custom Object called Reviews to capture Information generated by
interviewers during the candidate process. The Review records are visible to any user that has access
to the related custom Candidate record The VP of Human Resources wants the comment field on the
Review to be private to anyone outside of the HR department. How should the app builder meet this
requirement?', '[{"letter": "A", "text": "Create a page layout with the field and use field-level security to hide the field from all other users."}, {"letter": "B", "text": "Create a sharing rule to share the field with the VP of HR with Role and Subordinates."}, {"letter": "C", "text": "Create a page layout with the field for HR users and another page layout without the field for all other users."}, {"letter": "D", "text": "Create an Apex sharing rule to share the field with users that have \"HR\" in their role."}]'::jsonb, array['A']::text[]),
('26', 's1', '26', 'Service agents at Ursa Major Solar want a more condensed case view. Service agents also want
to be able to modify the associated contact and account Records from the case page layout on the
Lightning record page. Which two components should an app builder use to meet these
requirements?
Choose 2 answers', '[{"letter": "A", "text": "Tabs"}, {"letter": "B", "text": "Related record"}, {"letter": "C", "text": "Path"}, {"letter": "D", "text": "Rich text"}]'::jsonb, array['A', 'B']::text[]),
('27', 's1', '27', 'Sales reps want the ability to see who can View their account records and How the people have
access. Which button should the app builder add to the Account page layout to enable this?', '[{"letter": "A", "text": "Sharing Hierarchy"}, {"letter": "B", "text": "New Task"}, {"letter": "C", "text": "Sharing"}, {"letter": "D", "text": "Edit"}]'::jsonb, array['C']::text[]),
('28', 's1', '28', 'Cloud Kicks wants to start tracking how many shoe subscriptions have been Sold for each shoe
catalog. A master-detail relationship exists between the Subscription And the shoe_c objects. Which
type of field should an app builder create?', '[{"letter": "A", "text": "Roll-up summary field"}, {"letter": "B", "text": "Lookup field"}, {"letter": "C", "text": "Master-detail field"}, {"letter": "D", "text": "Sum field"}]'::jsonb, array['A']::text[]),
('29', 's1', '29', 'Sales reps at Universal Containers use Salesforce on their mobile devices. They want a way to
add new contacts quickly and then follow up later to complete the Additional information necessary.
Which mobile solution should an app builder recommend to create the new contact?', '[{"letter": "A", "text": "A Build a global action to create Contacts."}, {"letter": "B", "text": "Use Path and set pre-defined values."}, {"letter": "C", "text": "Customize the mobile menu to move Contacts to the top."}, {"letter": "D", "text": "Add a compact layout to Contacts."}]'::jsonb, array['A']::text[]),
('30', 's1', '30', 'Ursa Major Solar (UMS) is planning to hire some new employees. UMS Wants to allow a job
candidate (Job Candidate_c) to apply for multiple open Positions (Open_Position _c) and then be
able to View the applications (Application _c) on the job candidate''s recor UMS also wants to View
all the Applications for a specific open position. What should an app builder recommend to meet
these requirements?
Choose 2 answers', '[{"letter": "A", "text": "Create a master-detail relationship field on Application to open_Position"}, {"letter": "B", "text": "Create a master-detail relationship field on Application = to Job Candidate"}, {"letter": "C", "text": "Create a master detail relationship on open_posision to application_"}, {"letter": "D", "text": "Create a master-detail relationship field on Job candidate to Application_o."}]'::jsonb, array['A', 'B']::text[]),
('31', 's1', '31', 'Universal Containers (UC) needs a picklist field called Status on three Separate custom objects.
UC has a requirement to share the list of values for this field Across each object. Which feature
should an app builder use?', '[{"letter": "A", "text": "Shared Custom Field"}, {"letter": "B", "text": "Global Picklist Value Se"}, {"letter": "C", "text": "De pendent Picklist"}, {"letter": "D", "text": "Related Picklist"}]'::jsonb, array['B']::text[]),
('32', 's1', '32', 'When a sales rep submits an account for approval, Universal Containers Wants the user to
answer additional questions via a popup window to populate Additional record fields. What should
an app builder use to achieve the desired result?', '[{"letter": "A", "text": "Custom Object"}, {"letter": "B", "text": "Visualforce page"}, {"letter": "C", "text": "Custom button and Flow"}, {"letter": "D", "text": "Custom Lightning component"}]'::jsonb, array['C']::text[]),
('33', 's1', '33', 'The finance manager at Universal Containers wants to receive a new Business notification
email each time a new client is won. The sales manager wants to Receive a task letting them know to
onboard the new client unless it is a top-tier Client. Which automation tool should an app builder use
to best address all these requests?', '[{"letter": "A", "text": "Approval process"}, {"letter": "B", "text": "Record-triggered flow"}, {"letter": "C", "text": "Apex"}, {"letter": "D", "text": "Screen flow"}]'::jsonb, array['B']::text[]),
('34', 's1', '34', 'Universal Containers wants to dynamically display a component on a Lightning record page for
an account based on criteria about the related contact. Which solution should an app builder use to
fulfill this requirement?', '[{"letter": "A", "text": "Add a related record component to the page layout."}, {"letter": "B", "text": "Hide the component behind a tab on the page layout."}, {"letter": "C", "text": "Set the filter type on the component visibility to display based on user permissions, using custom Permission to define the dynamic criteria"}, {"letter": "D", "text": "Set the component visibility to display based on an advanced filter type, using the contact field(s) to Define the dynamic criteria"}]'::jsonb, array['D']::text[]),
('35', 's1', '35', 'Universal Containers wants to embed a chart of all related Opportunities, By stage, on the
Account detail page. Which type of report should an app builder create to add to the Account page
layout?', '[{"letter": "A", "text": "A tabular report on the Opportunity Object"}, {"letter": "B", "text": "A tabular report on the Account Object"}, {"letter": "C", "text": "A summary report on the Opportunity Object"}, {"letter": "D", "text": "A summary report on the Account Object"}]'::jsonb, array['C']::text[]),
('36', 's1', '36', 'An app builder has created a new report type but users are unable to select lt from the Report
Type list when making a new report for records they own. What could be causing this issue?', '[{"letter": "A", "text": "The report type is in a status of In Development."}, {"letter": "B", "text": "Access to the necessary Object is unavailable."}, {"letter": "C", "text": "The report type is in a status of Deploye"}, {"letter": "D", "text": "Access to Create and Customize Reports is disable"}]'::jsonb, array['A']::text[]),
('37', 's1', '37', 'The appraisal team at DreamHouse Realty wants to leverage Salesforce Mobile app. What are
three things an app builder should do to optimize mobile experience?
Choose 3 answers', '[{"letter": "A", "text": "Avoid using default field values so that the user is required to fill in all fields on the screen."}, {"letter": "B", "text": "Minimize the amount of formula fields and lookup fields to reduce page load time."}, {"letter": "C", "text": "Put the most important fields in the compact layout so they are easy to fin"}, {"letter": "D", "text": "Create individual customized layouts for different phone operating systems."}, {"letter": "E", "text": "Use Global Actions to make it easy to perform vital functionality on mobile."}]'::jsonb, array['B', 'C', 'E']::text[]),
('38', 's1', '38', 'Universal Containers wants to create a custom checkbox formula field on The Opportunity
object. This formula should evaluate to true if the following conditions Are met:
Stage is set to Negotiation/Review
Close Date is less than 1 week away
Which formula meets these requirements?', '[{"letter": "A", "text": "AND (StageName Negotiation/RevieW'', closeDate -DAY (7) TODAY!)}"}, {"letter": "B", "text": "AND (ISPICKVAL (SageName, *Negotiation/Review''), CloneDate—7 TODAY () )"}, {"letter": "C", "text": "AND (StageName = ''Negotiation/Review, CloseDate TODAY (1)"}, {"letter": "D", "text": "AND (ISPICKVAL (OtageName, Negotiation/RevieW). CloseDate DAY (7) TODAY (1)"}]'::jsonb, array['B']::text[]),
('39', 's1', '39', 'An app builder has downloaded a component from the AppExchange Successfully; however,
they are unable to add it to the Lightning home page. Which two reasons can be preventing the app
builder from being able to add the Custom component?
Choose 2 answers', '[{"letter": "A", "text": "A custom tab must be created to add custom components to the page with the App Builder."}, {"letter": "B", "text": "The component requires a developer permission to add it to the page with the App Builder."}, {"letter": "C", "text": "My Domain must be deployed to add custom components to the page with the App Builder."}, {"letter": "D", "text": "The component is tagged for record pages instead of home pages and is not ing up in The App Builder."}]'::jsonb, array['C', 'D']::text[]),
('40', 's1', '40', 'Universal Containers utilizes opportunities and a custom Object called Detailed_Sales_ The
company would like to roll sales metrics up to an opportunity For only records that
have their picklist status set to Active. What is the recommended method for the app builder to
achieve this request?', '[{"letter": "A", "text": "Utilize the AppExchange to download a third-party application that can roll up the sales dollars with The appropriate filter."}, {"letter": "B", "text": "Utilize Apex code to roll up the desired amounts."}, {"letter": "C", "text": "Create a master detail relationship between the parent and Child Object with a roll up summary field That filters on the status field"}, {"letter": "D", "text": "Create a lookup relationship between the parent and Child Object with a roll-up summary field that Filters on the status field"}]'::jsonb, array['C']::text[]),
('41', 's1', '41', 'At Cloud Kicks when an opportunity close date is delayed by more than 60 days, the Manager
and the VP of Sales want to review the change. Which two solutions will meet the requirement?
Choose 2 answers', '[{"letter": "A", "text": "Build an approval process that requires unanimous approval from the manager and VP of Sales."}, {"letter": "B", "text": "Build a validation rule that does not allow a user to save the opportunity recor"}, {"letter": "C", "text": "Create a formula field that calculates if the close date is less than 60 days and then send An email alert."}, {"letter": "D", "text": "Create a flow that submits the record for an approval process."}]'::jsonb, array['A', 'D']::text[]),
('42', 's1', '42', 'Universal Containers (UC) delivers purchased containers to remote Construction sites.
Customers supply UC with crossroads or location markers. Which field type should the app builder
use to capture this information?', '[{"letter": "A", "text": "Number"}, {"letter": "B", "text": "Geolocation"}, {"letter": "C", "text": "Reference"}, {"letter": "D", "text": "External Lookup"}]'::jsonb, array['B']::text[]),
('43', 's1', '43', 'The CFO of Cloud Kicks needs a way for new vendors to accept terms on Agreements for any
new major retail store lease before the opportunity can be close Which feature should be used to
handle this requirement?', '[{"letter": "A", "text": "Email Alert"}, {"letter": "B", "text": "Dynamic Action"}, {"letter": "C", "text": "Approval Process"}, {"letter": "D", "text": "Validation Rule"}]'::jsonb, array['C']::text[]),
('44', 's1', '44', 'An app builder is preparing to deploy a new app from the sandbox to Production using change
sets. Which two considerations should an app builder keep in mind during this process?
Choose 2 answers', '[{"letter": "A", "text": "Transactions will revert ifthe deployment errors."}, {"letter": "B", "text": "Users should be logged out of production when receiving inbound change sets."}, {"letter": "C", "text": "Salesforce Connect automatically establishes a link between environments."}, {"letter": "D", "text": "Change sets do not include all components and may have to perform some changes Manually."}]'::jsonb, array['A', 'D']::text[]),
('45', 's1', '45', 'At Ursa Major Solar there is a requirement for a new field called Planet
Details on the Planet Object where users can write detailed descriptions that can
Include pictures and links.
Which field type should the app builder utilize to fulfill this requirement?', '[{"letter": "A", "text": "Rich text area"}, {"letter": "B", "text": "Lightning web component"}, {"letter": "C", "text": "URL"}, {"letter": "D", "text": "Long text area"}]'::jsonb, array['A']::text[]),
('46', 's1', '46', 'Universal Containers wants to track installation information once a Container has been
purchased on a custom object. Sales reps should have visibility of AII the installations associated with
their opportunities. Which kind of relationship should this new Object have to Opportunity?', '[{"letter": "A", "text": "Master-Detail"}, {"letter": "B", "text": "Hierarchical"}, {"letter": "C", "text": "Many to Many"}, {"letter": "D", "text": "Lookup"}]'::jsonb, array['A']::text[]),
('47', 's1', '47', 'What is the process to upgrade an unmanaged package that is currently Installed in
production?', '[{"letter": "A", "text": "Uninstall the current version and install the new version."}, {"letter": "B", "text": "Use the Install Wizard to install the upgrade to production."}, {"letter": "C", "text": "Install the new version to a Developer org then deploy to production."}, {"letter": "D", "text": "Click the update link on the Installed Packages page."}]'::jsonb, array['A']::text[]),
('48', 's1', '48', 'Duplicate management for Leads has been implemented at Universal Containers but it seems
duplicate leads are still being create The Org Wide Default (OWD) is set to "Private" for Leads. Which
two actions help prevent duplicate Leads from being created?
Choose 2 answers', '[{"letter": "A", "text": "Change the Lead Duplicate Rule details to Bypass Sharing Rules."}, {"letter": "B", "text": "Change the Load Assignment Rule to check for duplicates."}, {"letter": "C", "text": "Change OWD for Leads to Public Rea"}, {"letter": "D", "text": "Change the Lead Duplicate actions to Block on Create."}]'::jsonb, array['A', 'D']::text[]),
('49', 's1', '49', 'The Recruiting team at AW Computing captures the job acceptance and date of hire of
A candidate on the Job Application custom object. Once the candidate accepts
The recruiter'' s job offer, the date of hire should be entered and not be changed on
Subsequent record edits.
Which validation formula should the app builder use?', '[{"letter": "A", "text": "(ISBLANK (Job Accepted_c) I I NOT (INCHANGED"}, {"letter": "B", "text": "NOT (LABLANK (Job hocepted_c)) FRISCHANGED (Hire_Date c)"}, {"letter": "C", "text": "NOT (ISBLANK 11 ISCHANGED"}, {"letter": "D", "text": "(ISBLANK NOT (ISCHANGED"}]'::jsonb, array['B']::text[]),
('50', 's1', '50', 'Cloud Kicks (CK) tracks the support level of its customers on the account
Record page. CK wants to a text notification on a case record page when the
Related account is a platinum-level customer.
How can an app builder meet this requirement?', '[{"letter": "A", "text": "Clone the Case Lightning page. Add a rich text com ponent to the new page, and assign this page to platinum accounts."}, {"letter": "B", "text": "Add a rich text component to the Case Lighting page Set the component visibility of the rich text component to when the account support level is Platinum. Create a text-only custom Lightning Web Component Drag the custom Lightning Web Component into the Case page layout."}, {"letter": "C", "text": "Set its visibilityto when the account support level is platinum. Create a text-only custom Lightning Web Component. Clone the case page layout."}, {"letter": "D", "text": "Drag the custom Lightning Web Component into the page, and assign the layout to platinum cases."}]'::jsonb, array['B']::text[]),
('51', 's1', '51', 'AW Computing uses a private sharing model for opportunities. Whenever An opportunity with
a type of Service Agreement is created, all users in the Service Manager role should be able to View
the opportunity. Which tool should AW Computing use to accomplish this?', '[{"letter": "A", "text": "Owner-based sharing rules"}, {"letter": "B", "text": "Criteria-based sharing rules"}, {"letter": "C", "text": "Apex sharing rules"}, {"letter": "D", "text": "Manual sharing"}]'::jsonb, array['B']::text[]),
('52', 's1', '52', 'An app builder at Ursa Major Solar has been working on a new custom app In a sandbox that
has been upgraded to the next major Salesforce version, and their Production instance is Still on the
current Salesforce version. The development is Complete and they are ready to deploy a change set.
What should the app builder consider when planning the deployment?', '[{"letter": "A", "text": "The change set will be automatically deployed when production is upgrade"}, {"letter": "B", "text": "The deployment is not possible due to different versions."}, {"letter": "C", "text": "The change set components will be upgraded to the next version in production."}, {"letter": "D", "text": "lt will fail if there is a feature only available in the next version."}]'::jsonb, array['D']::text[]),
('53', 's1', '53', 'An app builder needs to change the data type of some custom fields. Which two limitations
should the app builder be aware of when changing the data Type of a custom field?
Choose 2 answers', '[{"letter": "A", "text": "lt is not possible to change the data type of a formula field to any data type."}, {"letter": "B", "text": "lt is not possible to change the data type of field referenced by Apex code."}, {"letter": "C", "text": "lt is not possible to change the data type of a field used as an External ID from number to Text."}, {"letter": "D", "text": "lt is not possible to change the data type of a Text Area (Long) field to Text."}]'::jsonb, array['A', 'B']::text[]),
('54', 's1', '54', 'DreamHouse Realty wants to display a weather map component on a Lightning record page
when a house is scheduled for a ing. How should the app builder meet the requirement?', '[{"letter": "A", "text": "Component visibility"}, {"letter": "B", "text": "Field-level security"}, {"letter": "C", "text": "Formula field"}, {"letter": "D", "text": "Sharing rules"}]'::jsonb, array['A']::text[]),
('55', 's1', '55', 'Universal Containers (UC) has several picklist fields on the Account Object Whose values are
routinely modified to meet changing business requirements. Due to These revolving changes, UC has
a high number of inactive picklist values that are Impacting system performance and user
experience. What can the app builder do to alleviate this issue?', '[{"letter": "A", "text": "Establish upper bound on existing picklists in Picklist Settings."}, {"letter": "B", "text": "Set up Global Values in Picklist Value Sets."}, {"letter": "C", "text": "Remove upper bound on inactive picklist values in Picklist Settings."}, {"letter": "D", "text": "Convert the picklist fields to a different field type that will still meet the business requirements."}]'::jsonb, array['B']::text[]),
('56', 's1', '56', 'How should an app builder configure access to a contact''s Twitter profile for Salesforce mobile
app users?', '[{"letter": "A", "text": "Add a Twitter Quick Action to the mobile navigation."}, {"letter": "B", "text": "Add an AppExchange Lightning Component to the mobile app."}, {"letter": "C", "text": "Add the Twitter component to mobile View Lightning pages."}, {"letter": "D", "text": "Add a formula field to the Contact page layout."}]'::jsonb, array['C']::text[]),
('57', 's1', '57', 'A business user at Universal Containers wants to update an Account directly From an
Opportunity recor What should the app builder create to allow the business user to make these
edits?', '[{"letter": "A", "text": "Opportunity fields updated by a process."}, {"letter": "B", "text": "Formula fields displaying the Account fields."}, {"letter": "C", "text": "An update record action with a related record component."}, {"letter": "D", "text": "An update record action with a detail''s component."}]'::jsonb, array['C']::text[]),
('58', 's1', '58', 'Cloud Kicks works on an annual subscription model. When a sales rep marks An opportunity as
closed won, a new opportunity should automatically be created for The renewal. The contracts team
works outside of Salesforce but also needs to be Notified about closed deals in order to initiate the
contract process with the customer. Which automation solution would meet these requirements?', '[{"letter": "A", "text": "Approval Process"}, {"letter": "B", "text": "Outbound Message"}, {"letter": "C", "text": "Record-triggered flow"}, {"letter": "D", "text": "Validation Rule"}]'::jsonb, array['B']::text[]),
('59', 's1', '59', 'The sales team receives a list of approximately 800 leads each morning from The marketing
team. The marketing team does not know if any of the leads are Currently in the pipeline and sends
the entire list each morning. Which tool should be used to import these leads into Salesforce while
preventing the Duplicates from being inserted?', '[{"letter": "A", "text": "Dataloader.io"}, {"letter": "B", "text": "Data Import Wizard"}, {"letter": "C", "text": "Data Loader"}, {"letter": "D", "text": "Manual entry"}]'::jsonb, array['B']::text[]),
('60', 's1', '60', 'The Director of Marketing at Northern Trail Outfitters wants the app builder to create a
Formula field that tracks how many days have elapsed since a contact was sent a Marketing
communication. The director is only interested in whole units. Which function should be used to
return a date for calculating the difference?', '[{"letter": "A", "text": "TODAY()"}, {"letter": "B", "text": "DATEVALUE()"}, {"letter": "C", "text": "NOW()"}, {"letter": "D", "text": "DATETIMEVALUE()"}]'::jsonb, array['A']::text[]),
('61', 's1', '61', 'A new app builder on the Cloud Kicks team is getting familiar with the data Model. They want to
see how standard objects and custom objects relate. Which functionality should the app builder use
to View these relationships?', '[{"letter": "A", "text": "Object Manager"}, {"letter": "B", "text": "Fields & Relationships"}, {"letter": "C", "text": "Schema Builder"}, {"letter": "D", "text": "Lightning App Builder"}]'::jsonb, array['C']::text[]),
('62', 's1', '62', 'The marketing director is concerned that too many car parts were given Away for free last year.
Which functionality should be used to ensure all free parts receive the marketing Directors'' sign-off?', '[{"letter": "A", "text": "Chatter approval"}, {"letter": "B", "text": "Slack post"}, {"letter": "C", "text": "Automated email message"}, {"letter": "D", "text": "Approval process"}]'::jsonb, array['D']::text[]),
('63', 's1', '63', 'Universal Containers is adding drone delivery to service offerings. The Developer wrote and
tested the code and the change set is ready to go. However, the Deployment window will occur
when the developer is on vacation. What can the app builder do to help ensure the code will
successfully deploy to Production?', '[{"letter": "A", "text": "Remove Apex classes from inbound change set."}, {"letter": "B", "text": "Validate the outbound change set."}, {"letter": "C", "text": "Use a metadata package set."}, {"letter": "D", "text": "Validate the inbound change set."}]'::jsonb, array['D']::text[]),
('64', 's1', '64', 'Universal Containers manages leads in a Lead qualification queue where Sales reps can accept
ownership of the Lea Campaign members are required to Have a sales owner. Which validation rule
should an app builder configure?', '[{"letter": "A", "text": "AND ( 18BLANK (Loa Owner.ld))"}, {"letter": "B", "text": "NOT( ISBLANK (La own: Quum.ld))"}, {"letter": "C", "text": "AND (ISNER(), TSBLANK (Lea owner:ter.ld))"}, {"letter": "D", "text": "NOT (INE) ISBLANK (Lea owner: Cueue.ld))"}]'::jsonb, array['B']::text[]),
('65', 's1', '65', 'Cloud Kicks has created a custom Object called Interests which is joined to Accounts by way of a
junction Object called Account Interest. What is the impact to users attempting to View an Account
and the associated Account Interest records if they are without read access to the Interest object?', '[{"letter": "A", "text": "Users will be able to View the Account Interest records and will have read-only access to the Interest Records."}, {"letter": "B", "text": "Users will be unable to View Account records that have a related Account Interest recor"}, {"letter": "C", "text": "Users will be unable to View the Account Interest records or the Interest records."}, {"letter": "D", "text": "Users will be able to View the Account Interest record, but unable to View the field or any Information relating to the Interest recor"}]'::jsonb, array['A']::text[]),
('66', 's2', '66', 'The VP of sales at AW Computing would like a Roll-Up Summary field onThe Account Object to
aggregate the amount of opportunities related to an Account. The app builder is unable to
implement this change. Why is the app builder unable to fulfill the request?', '[{"letter": "A", "text": "The default currency is not an active currency in the organization."}, {"letter": "B", "text": "The organization has Advanced Currency Management enable"}, {"letter": "C", "text": "Roll-Up Summary fields are unavailable on the Account Object."}, {"letter": "D", "text": "Currency fields are unable to be referenced in Roll-Up Summary fields."}]'::jsonb, array['B']::text[]),
('67', 's2', '67', 'Universal Containers wants to improve the process to create
Opportunity records related to an Account. Many fields can be populated
Based on the Account record Some fields require input from the user.
What should an app builder configure to meet the requirement?', '[{"letter": "A", "text": "Quick Action on the Account Object"}, {"letter": "B", "text": "Assignment rule triggered from Account update"}, {"letter": "C", "text": "Quick Action on the Opportunity object."}, {"letter": "D", "text": "Assignment rule triggered from Opportunity update"}]'::jsonb, array['A']::text[]),
('68', 's2', '69', 'A customer service representative at a call center wants to be ableto
Collect information from customers using a series of question prompts.
What should an app builder use to accomplish this?', '[{"letter": "A", "text": "Approval Process"}, {"letter": "B", "text": "Path"}, {"letter": "C", "text": "Validation Rule"}, {"letter": "D", "text": "Flow"}]'::jsonb, array['B']::text[]),
('69', 's2', '70', 'Which three standard component types are available in the Lightning App Builder?
Choose 3 answers', '[{"letter": "A", "text": "Recent items"}, {"letter": "B", "text": "custom fields for the Galactic Vendors''s location: Filter list"}, {"letter": "C", "text": "Rich tex"}, {"letter": "D", "text": "Report details"}, {"letter": "E", "text": "Plain text"}]'::jsonb, array['A', 'B', 'C']::text[]),
('70', 's2', '72', 'What is one limitation of using schema builder when creating a
Field?', '[{"letter": "A", "text": "Cannot create formula fields."}, {"letter": "B", "text": "Cannot create lookup relationships."}, {"letter": "C", "text": "Cannot add fields to page layouts."}, {"letter": "D", "text": "Cannot see existing relationships between objects."}]'::jsonb, array['C']::text[]),
('71', 's2', '73', 'Universal Containers wants to give sales managers the ability to quickly provide sign off
On an Opportunity via the Opportunity record page when a sales rep has discounted a deal by 20%
To 30%. Which two features should be used for this requirement?
Choose 2 answers', '[{"letter": "A", "text": "Dynamic Actions"}, {"letter": "B", "text": "Schema Builde"}, {"letter": "C", "text": "Approval Process"}, {"letter": "D", "text": "Validation Rule"}]'::jsonb, array['A', 'C']::text[]),
('72', 's2', '74', 'When a deal is closed-won, it has to be approved by the owner''s Manager prior to being added
to the leaderboard for a quarterly sales Competition. An opportunity is won on the last day of the
quarter and the Manager is on vacation. What is recommended to ensure all of the appropriate deals
are reviewed and the leaderboard is up to date?', '[{"letter": "A", "text": "Have the manager'' s assistant reassign the approval request."}, {"letter": "B", "text": "Use a quick action to forward the approval request to the next level approver."}, {"letter": "C", "text": "Set up a delegated approver for the manager."}, {"letter": "D", "text": "Use an assignment rule to automatically assign a delegated approver."}]'::jsonb, array['C']::text[]),
('73', 's2', '75', 'Universal Containers has a custom picklist called Support Level
On the Account object. They would like to the real-time value of
Support Level on all case records.
How should an app builder implement this requirement?', '[{"letter": "A", "text": "Create a formula field on the Account Object using the ISPICKVAL function."}, {"letter": "B", "text": "Create a Lookup Relationship on the Case Object."}, {"letter": "C", "text": "Create a roll-up summary field using Support Level on the Account object."}, {"letter": "D", "text": "Create a formula field on the Case Object using the TEXT function."}]'::jsonb, array['D']::text[]),
('74', 's2', '76', 'Universal Containers (UC) requires that all users specify a
Contract is sent on each Opportunity prior to marking it as "Closed Won".
UC wants to be able to report on how many Opportunities have sent
Contracts compared to how many have a missing contract when the
Opportunities close
Which field type should an app builder configure to fulfill this requirement?', '[{"letter": "A", "text": "Picklist"}, {"letter": "B", "text": "Text"}, {"letter": "C", "text": "Checkbox"}, {"letter": "D", "text": "Text Area"}]'::jsonb, array['C']::text[]),
('75', 's2', '77', 'Cloud Kicks (CK) is finding sales reps are inconsistent in data Entry when deals are won. CK
requires that custom shoes are shipped Within two weeks after the close date. A custom field called
Scheduled Ship Date on the opportunity records the ship date. How should the app builder ensure
this field is properly filled out beforeSetting the opportunity to closed won?', '[{"letter": "A", "text": "OR (ISPICKVAL( StageName=\"Closed Won\") (Scheduled_Ship_Date_c-Close Date) >14, ISBLANK (Scheduled_Ship_Date_c))"}, {"letter": "B", "text": "ISPICKVAL ( Won\") & (Close Date-Scheduled_Ship_Date z) > 14"}, {"letter": "C", "text": "ISPICKVAL ( Stage Name, \"Closed Won\") && (Scheduled_Ship_Date_c CloseDate) > 14"}, {"letter": "D", "text": "OR (ISPICKVAL ( Stage Name, \"Closed Won\") && (Scheduled_Ship_Date_c-CloseDate) >14, ISBLANK"}]'::jsonb, array['D']::text[]),
('76', 's2', '78', 'An app builder wants to create a custom Object and IO fields.
What should they use to create the object, fields, and relationships quickly
From one place?', '[{"letter": "A", "text": "Schema Builder"}, {"letter": "B", "text": "Lightning Object Creator"}, {"letter": "C", "text": "Manage Field Permissions"}, {"letter": "D", "text": "Developer Console"}]'::jsonb, array['A']::text[]),
('77', 's2', '79', 'Universal Containers asked the app builderto ensure when an
Account type changes to ''Past-Customer'' the contacts directly related to
That account get an updated status of ''Re-Market''.
Which automation should the app builder use to accomplish this task?', '[{"letter": "A", "text": "Validation rule"}, {"letter": "B", "text": "Lightning component"}, {"letter": "C", "text": "Screen flow"}, {"letter": "D", "text": "Record-triggered flow"}]'::jsonb, array['D']::text[]),
('78', 's2', '80', 'A sales manager has noticed that reps continue to input contacts
Directly in their phone instead of adding them to Salesforce.
What should an app builder recommend to ensure the data makes it into
Salesforce?', '[{"letter": "A", "text": "Allow Salesforce to import Contacts from mobile device Contact lists."}, {"letter": "B", "text": "Enable in-app notifications every time a contact is create"}, {"letter": "C", "text": "Enable ofline create, edit, and delete in Salesforce for Android and iOS."}, {"letter": "D", "text": "Allow users to relate a contact to multiple accounts."}]'::jsonb, array['C']::text[]),
('79', 's2', '81', 'Cloud Kicks is implementing an approval process for opportunities that requires managers
To approve all opportunities above $50,000 before they can be marked as Closed Won.
Which two delivery methods can a manager utilize to respond to approval requests in the Salesforce
Mobile app?
Choose 2 answers', '[{"letter": "A", "text": "Navigation Menu"}, {"letter": "B", "text": "Home Screen"}, {"letter": "C", "text": "In-App Notification"}, {"letter": "D", "text": "Record Detail"}]'::jsonb, array['C', 'D']::text[]),
('80', 's2', '82', 'The marketing team at Universal Containers has a list of 400 leads it wants to upload to
Salesforce. The team needs to avoid creating duplicate records. Which two actions should be taken
to meet this requirement?
Choose 2 answers', '[{"letter": "A", "text": "Use Data Loader''s update function to import leads and match to existing Records based on e- mail address."}, {"letter": "B", "text": "Upload the lead list using the Import Wizard and select a Matching Type to Prevent duplicate lead creation."}, {"letter": "C", "text": "Enable Duplicate Matching in the Data Management section in Setup and Activate the Lead- to-Lead scenario."}, {"letter": "D", "text": "Utilize a Lead Matching Rule and corresponding Duplicate Rule to block newly Created duplicate leads."}]'::jsonb, array['B', 'D']::text[]),
('81', 's2', '83', 'An app builder at DreamHouse Realty created a custom Object which has Fields containing data
from two different objects via related lookups. What is needed to create "with" or "without" reports
on the new custom Object?', '[{"letter": "A", "text": "Report Filters"}, {"letter": "B", "text": "Row-LeveI Formula"}, {"letter": "C", "text": "Report Bucket Field"}, {"letter": "D", "text": "Custom Report Type"}]'::jsonb, array['D']::text[]),
('82', 's2', '84', 'Universal Containers (UC) has a time-sensitive need fora custom Component to be built in 4
weeks. UC developers require additional Enablement to complete the work and are logged by
several months. Which option should an app builder suggest to meet this requirement?', '[{"letter": "A", "text": "Build a screen flow page."}, {"letter": "B", "text": "Use an AppExchange solution."}, {"letter": "C", "text": "Build a Lightning record page."}, {"letter": "D", "text": "Use a Bolt solution."}]'::jsonb, array['B']::text[]),
('83', 's2', '85', 'Universal Containers (UC) has a custom Invoice Object and a custom Invoice Line Item Object.
The Invoice Line Item Object has a lookup relationship to the Invoice. UC would like to Convert the
lookup relationship to a master-detail relationship but is unable to do so. Which two reasons could
be preventing this relationship conversion?
Choose 2 answers', '[{"letter": "A", "text": "There are already two master-detail relationships on the Invoice Line Item."}, {"letter": "B", "text": "Custom objects are unable to be on the detail side of a master-detail Relationship."}, {"letter": "C", "text": "Invoice Line Item records exist without having the Invoice lookup field Populate"}, {"letter": "D", "text": "There is a roll-up summary field on the Invoice Object."}]'::jsonb, array['A', 'C']::text[]),
('84', 's2', '86', 'Universal Containers generates leads from three different Sources: web, trade s, and partners.
Some of the information Collected is applicable to all sources, there is also information that is unique
To each type of lea What should an app builder configure to meet these requirements?', '[{"letter": "A", "text": "Create three lead record types each with its own page layout containing the relevant Fields."}, {"letter": "B", "text": "Create three sections on the lead layout and instruct users to collapse the non- Relevant fields."}, {"letter": "C", "text": "Create a lead Object on the partner community and a record type for web and trade leads."}, {"letter": "D", "text": "Create custom objects for each type of lead with each page layout only containing the Relevant fields."}]'::jsonb, array['A']::text[]),
('85', 's2', '87', 'Universal Containers has a Lightning record page that supportsBoth the mobile app and
desktop. An app builder has downloaded a custom Lightning component from AppExchange, but
users are unable to View the Component on mobile devices.', '[{"letter": "A", "text": "The component needs to be activate"}, {"letter": "B", "text": "The record page template is unable to support mobile devices."}, {"letter": "C", "text": "The component has been developed for Desktop Pages."}, {"letter": "D", "text": "The record page needs to be activate"}]'::jsonb, array['C']::text[]),
('86', 's2', '88', 'Cloud Kicks wants to summarize the number of open Cases related to an Account, as well As
the number of closed Cases to indicate whether customer support utilization is high, medium, or
Low. Two number fields have been created: and NUM_CIosed Cases _ Which
two solutions meet these business requirements?
Choose 2 answers', '[{"letter": "A", "text": "Validation Rule"}, {"letter": "B", "text": "Apex"}, {"letter": "C", "text": "AppExchange"}, {"letter": "D", "text": "Approval Process"}]'::jsonb, array['B', 'C']::text[]),
('87', 's2', '89', 'Cloud Kicks (CK) wants to begin socializing and collaborating within Salesforce around
Customer accounts to discuss various topics. CK would like all company employees to see these
Conversations. Which two features of Chatter would meet CK''s business needs?
Choose 2 answers', '[{"letter": "A", "text": "Set up new public Chatter groups."}, {"letter": "B", "text": "Set up new private Chatter groups."}, {"letter": "C", "text": "Use Chatter actions to create tasks to complete."}, {"letter": "D", "text": "Use post action on the Account Object."}]'::jsonb, array['A', 'D']::text[]),
('88', 's2', '90', 'Cloud Kicks wants to display the number of opportunities that Are Closed Won with a Close
Date within the last year on the Account detail Page.
What should an app builder use to implement this?', '[{"letter": "A", "text": "Activity timeline"}, {"letter": "B", "text": "Formula field"}, {"letter": "C", "text": "Validation rule"}, {"letter": "D", "text": "Roll-up summary field"}]'::jsonb, array['D']::text[]),
('89', 's2', '91', 'Universal Containers uses the Asset Object to track products that Are installed at customer
locations. A new object, Asset Inventory, has Been created to capture details about the asset. Which
approach should the app builder take to Asset Inventory as a Related list on Asset?', '[{"letter": "A", "text": "Create a lookup relationship on Asset Inventory to Asset. Add the Asset Inventory Related list to the Asset page layout."}, {"letter": "B", "text": "Create a roll-up on Asset. Add the Asset Inventory related list to the Asset page Layout."}, {"letter": "C", "text": "Create a master-detail relationship on Asset to Asset Inventory Add the Asset Inventory related list to the Asset page layout."}, {"letter": "D", "text": "Create a junction Object to relate Asset Inventory and Asset. Add the Asset Inventory Related list to the Asset page layout."}]'::jsonb, array['A']::text[]),
('90', 's2', '92', 'DreamHouse Realty has a mentorship program that pairs Experienced Realtors with new
Realtors. Each experienced Realtor can Mentor one or several new Realtors, and each new Realtor is
required to Work with a single experienced Realtor they report to for a probationary Perio Which
type of relationship would an app builder set up to meet this Specification?', '[{"letter": "A", "text": "Indi rect lookup"}, {"letter": "B", "text": "Lookup"}, {"letter": "C", "text": "Many-to-many"}, {"letter": "D", "text": "Master-detail"}]'::jsonb, array['D']::text[]),
('91', 's2', '93', 'An app builder wants to streamline the user experience by reflecting summarized calculations
of Specific fields on various objects. Which three field types can be used in roll-up summary fields to
accomplish this?
Choose 3 answers', '[{"letter": "A", "text": "Checkbox"}, {"letter": "B", "text": "Time"}, {"letter": "C", "text": "Currency"}, {"letter": "D", "text": "Date"}, {"letter": "E", "text": "Percent"}]'::jsonb, array['A', 'C', 'E']::text[]),
('92', 's2', '94', 'An app builder wants to update a field on the parent record When a Child record connected via
lookup is delete Which automation should the app builder use?', '[{"letter": "A", "text": "Record-triggered flow"}, {"letter": "B", "text": "Validation rule"}, {"letter": "C", "text": "Autolaunched flow"}, {"letter": "D", "text": "Quick action"}]'::jsonb, array['A']::text[]),
('93', 's2', '95', 'At Ursa Solar Major, only users with the Outer Planets profile Need to see the Jupiter field on
the Solar System object. How should the app builder satisfy this requirement?', '[{"letter": "A", "text": "Classic encryption"}, {"letter": "B", "text": "Field-level security"}, {"letter": "C", "text": "Filtered View"}, {"letter": "D", "text": "Sharing rules"}]'::jsonb, array['B']::text[]),
('94', 's2', '96', 'The Universal Containers data manager has been complaining About the lack of data integrity
on Contact records. Sales reps have not been filling out the Region fiel The data manager Wants the
Region field filled out only for Contacts that are associated to Accounts that have been marked as
''High Priority'' on the Customer Status Field
What can the app builder do to fulfil this requirement?', '[{"letter": "A", "text": "Create a validation rule on Account."}, {"letter": "B", "text": "Make the Customer Status field required on Account."}, {"letter": "C", "text": "Create a validation rule on Contact."}, {"letter": "D", "text": "Make the Region field required on Contact."}]'::jsonb, array['C']::text[]),
('95', 's2', '97', 'An app builder wants to add the option to ''Send New Email'' from Leads, Contacts, and
Accounts for users on mobile. What is the benefit of using global actions to accomplish this?', '[{"letter": "A", "text": "The global action''s layout automatically clones the default page layout."}, {"letter": "B", "text": "Salesforce Lightning Component Library houses existing global actions prebuilt for use."}, {"letter": "C", "text": "Global actions are record-specific and are available when searching that particular Object."}, {"letter": "D", "text": "Global actions can be accessed anywhere actions are available in mobile including Record detail pages, feed, and Chatter groups."}]'::jsonb, array['D']::text[]),
('96', 's2', '98', 'Ursa Major Solar (UMS) uses Cases to track customer Complaints, an Issue _ c Object to
represent known problems with its solar Panels, and a Case_lssue _c junction Object to relate known
problems to Customer complaints. Periodically, UMS conducts audits which require the Auditing
users to View case _ Issue _ c records. Which access levels must be configured to allow UMS users to
access Case Issue c records?', '[{"letter": "A", "text": "Read-Only access on Case and Issue_c"}, {"letter": "B", "text": "Read-Only access on Case and Case Issue_e"}, {"letter": "C", "text": "Read-Only access on Case Issue_c"}, {"letter": "D", "text": "Read-OnIy access on Issue _ c and Case Issue_c"}]'::jsonb, array['A']::text[]),
('97', 's2', '99', 'Where can an app builder edit an existing app to add Components to the utility bar?', '[{"letter": "A", "text": "Lightning App Builder"}, {"letter": "B", "text": "Lightning Record Page"}, {"letter": "C", "text": "App Manager"}, {"letter": "D", "text": "App Menu"}]'::jsonb, array['C']::text[]),
('98', 's2', '100', 'Northern Trail Outfitters wants to change a master-detail Relationship on Account to a lookup
relationship with a custom Object Park. The app builder tries to reconfigure this but is unable to do
so. What could be causing this?', '[{"letter": "A", "text": "The Account is included in a flow process on the Park Object."}, {"letter": "B", "text": "The park records have existing formulas on the Account."}, {"letter": "C", "text": "The Park Object needs at least one Master-Detail field for reporting."}, {"letter": "D", "text": "The Account record includes Parks roll-up summary fields."}]'::jsonb, array['D']::text[]),
('99', 's2', '101', 'Universal Containers created a ''New Task'' custom action on the Opportunity object. The
action was added to all page layouts in the Mobile & Lightning Actions section. Which Lightning
component should the app builder add to the layout to Display the action?', '[{"letter": "A", "text": "Highlights panel"}, {"letter": "B", "text": "Activities"}, {"letter": "C", "text": "Related lists"}, {"letter": "D", "text": "Related record"}]'::jsonb, array['B']::text[]),
('100', 's2', '102', 'Properly installing managed packages helps prevent conflicts With customizations made by
customers and partners. Which functionality should be used to set up packages?', '[{"letter": "A", "text": "Namespace"}, {"letter": "B", "text": "Help setting"}, {"letter": "C", "text": "Description"}, {"letter": "D", "text": "Allow sharing"}]'::jsonb, array['A']::text[]),
('101', 's2', '103', 'After a deal is closed, Cloud Kicks (CK) wants to assign a user as A customer service manager
(CSM) in addition to the account owner and Would like a new field to easily track and report which
CSM is assigned to The Account. Which solution should an app builder use for this request?', '[{"letter": "A", "text": "Lookup field"}, {"letter": "B", "text": "Text field"}, {"letter": "C", "text": "Picklist field"}, {"letter": "D", "text": "Multi-select picklist field"}]'::jsonb, array['A']::text[]),
('102', 's2', '104', 'The app builder at Northern Trail Outfitters created a report type For opportunities with or
without shipments. The operations team wants to See the account rating information on the report.
What should the app builder do to fulfill this request?', '[{"letter": "A", "text": "Use add fields related via lookup with the View set to opportunities."}, {"letter": "B", "text": "Change the account/opportunity relationship to a master/detail relationship."}, {"letter": "C", "text": "Change the primary Object of the custom report type to the Account Object."}, {"letter": "D", "text": "Add the Account Rating field to the opportunity record page."}]'::jsonb, array['A']::text[]),
('103', 's2', '105', 'Universal Container wants customers to be able to open cases From a public-facing website.
What should the app builder use to enable visitors to the website?', '[{"letter": "A", "text": "Web-to-case"}, {"letter": "B", "text": "Outbound message"}, {"letter": "C", "text": "Screen flow"}, {"letter": "D", "text": "Email-to-case"}]'::jsonb, array['A']::text[]),
('104', 's2', '106', 'Ursa Major Solar (UMS) has a custom Object where they track Galactic Vendors. The Object
has four custom fields for the Galactic Vendors''s location:
Street
City
. Planet
. Galaxy
The UMS''s leadership wants these fields to be combined into a single Formula field on two lines.
Which formula fulfills this requirement?', '[{"letter": "A", "text": "Street r (City & \","}, {"letter": "B", "text": "Street & BR () &Planet Galaxy_) City_c & \", \" & Planet_ca & Galaxy_O"}, {"letter": "C", "text": "Street &(City & \", \" & Planet & \"& Galaxy_O}"}, {"letter": "D", "text": "Street r & BR () &City & \" & Planet_ * && Galaxy_r"}]'::jsonb, array['B']::text[]),
('105', 's2', '107', 'Universal Containers has Public Read/Write as the Account Organization-wide default (OWD)
setting. Visitors to the customer Community site report that they can see all of the company''s
account Records. How should an app builder configure Account sharing so that community Users
only see their own Account?', '[{"letter": "A", "text": "Create an account record type for external accounts."}, {"letter": "B", "text": "Set the account external OWD to private."}, {"letter": "C", "text": "Define an owner-based sharing rule for external accounts."}, {"letter": "D", "text": "Define a permission set for external accounts."}]'::jsonb, array['B']::text[]),
('106', 's2', '108', 'Cloud Kicks (CK) increased its Salesforce development efforts so That it now has multiple
custom development efforts happening in parallel. CK''s developers and admins perform the
customizations and have Complained that working in one sandbox has led to many problems. They
Requested a solution in which they can work in at least 20 different Sandboxes at once, that all start
with the same base configuration and Dat What should an app builder use to solve the problem?', '[{"letter": "A", "text": "Sandbox cloning"}, {"letter": "B", "text": "Partial copy sandboxes"}, {"letter": "C", "text": "Full copy sandboxes"}, {"letter": "D", "text": "Sandbox refreshes"}]'::jsonb, array['A']::text[]),
('107', 's2', '109', 'An app builder wants to limit the amount of fields users see When creating a new
Opportunity. Once they fill out the required fields and Save, the full record page with additional
fields relevant to the Opportunity Type becomes available. How could this be accomplished?', '[{"letter": "A", "text": "Make the Opportunity type a required field on the initial Opportunity page layout and Use automation to update the record type based on the Opportunity type."}, {"letter": "B", "text": "Use different page layouts for Opportunity types based on the user profile."}, {"letter": "C", "text": "Once the required fields are populated, use a sharing rule to share the new fields with The user."}, {"letter": "D", "text": "Hide additional sections on the page layout and the users how to manually Expand them when they want to fill in the fields in the hidden sections."}]'::jsonb, array['A']::text[]),
('108', 's2', '110', 'At Universal Containers, the VP of Service has requested a visual indicator flag on each case,
based On the case priority. High-priority cases should be flagged red, medium-priority should be
flagged Yellow, and low-priority cases should be flagged green. Which two formulas will accomplish
this requirement?
Choose 2 answers', '[{"letter": "A", "text": "IMAGE( IF(lSPlCKVAL(Priority, \"Low\"), \"/img/samples/flag_green.gif'', IF(lSPlCKVAL(Priority, \"Medium\"), \"/img/samples/flag_yellow.gi€'', IF(lSPlCKVAL(Priority, \"High\"), \"/img/samples/flag_re gif\", \"/s.gi€''))), \"Priority Flag\")"}, {"letter": "B", "text": "IMAGE( CASE( Priority, \"Low\", \"/img/samples/flag_green.gif\", \"Medium\", \"/img/samples/flag_yellow.gi€'', \"High\", \"/img/samples/flag_re gif\", \"/s.gi€''), \"Priority Flag\")"}, {"letter": "C", "text": "\"Low\"), \"/img/samples/flag_green.giff, \"Medium\"), \"/img/samples/flag_yellow.gif\", IF(lSPlCKVAL(Priority, \"High\"), \"/img/samples/flag_re gif'', \"/s.gi€'')))"}, {"letter": "D", "text": "CASE( Priority, \"LOW'', \"/img/samples/flag_green.gi€'', \"Medium\", \"/img/samples/flag_yellow.gi€'', \"High\", \"/img/samples/flag_re gif\", \"/s.giff)"}]'::jsonb, array['A']::text[]),
('109', 's2', '111', 'An app builder at Universal Containers has been asked to add The Chatter feed to a custom
Object record page. Which approach should the app builder use?', '[{"letter": "A", "text": "Add a custom Chatter feed component."}, {"letter": "B", "text": "Add the standard related list component"}, {"letter": "C", "text": "Add the standard Chatter feed component."}, {"letter": "D", "text": "Add the Chatter feed component from the AppExchange."}]'::jsonb, array['C']::text[]),
('110', 's2', '112', 'The brokers at DreamHouse Realty (DR) are having an issue When using the Salesforce mobile
app on their iPhones. There are several Key fields on the contact record they need access to at a
glance. Because Of the small screen, they currently have to scroll down the page to View the
Information. What should the app builder at DR use to configure the Salesforce mobile App to these
key fields at the top of the screen?', '[{"letter": "A", "text": "Mobile navigation"}, {"letter": "B", "text": "Record Detail component"}, {"letter": "C", "text": "Compact layout"}, {"letter": "D", "text": "Object specific action"}]'::jsonb, array['C']::text[]),
('111', 's2', '113', 'A sales rep at AW Computing is unable to find what they are looking for While scrolling through
their Chatter fee How can a filter be utilized to only posts from their key account and Opportunity
records?', '[{"letter": "A", "text": "Create Chatter Dookmarks."}, {"letter": "B", "text": "Create a Chatter stream."}, {"letter": "C", "text": "Create a Chatter notification."}, {"letter": "D", "text": "Create a Chatter group."}]'::jsonb, array['B']::text[]),
('112', 's2', '114', 'Which two features can be used to allow users to access Flows?
Choose 2 answers', '[{"letter": "A", "text": "Flow Launcher"}, {"letter": "B", "text": "Apex"}, {"letter": "C", "text": "Approval Process"}, {"letter": "D", "text": "Quick Action"}]'::jsonb, array['A', 'D']::text[]),
('113', 's2', '115', 'Which two places can an app builder go to see a list of available Custom Lightning
Components in their org?
Choose 2 answers', '[{"letter": "A", "text": "Visualforce components in Setup"}, {"letter": "B", "text": "Salesforce Optimizer App"}, {"letter": "C", "text": "Lightning App Builder"}, {"letter": "D", "text": "Lightning components in Setup"}]'::jsonb, array['C', 'D']::text[]),
('114', 's2', '116', 'Nickname c is a custom text field on a contact record that is Utilized to override the contact
name appearing on an email template. This Field is not required and is not always filled in. Which
formula should an app builder use to select the contact''s preferred Name for email communications?', '[{"letter": "A", "text": "IF (NOT (BLANKVALUE (Nickname _ c)), Nickname_c, FirstName)"}, {"letter": "B", "text": "IF(lSNULL(Nickname _ c), Nickname _ C, FirstName)"}, {"letter": "C", "text": "IF (NOT (ISBLANK (Nickname _c)), Nickname _c, FirstName)"}, {"letter": "D", "text": "IF (TEXT (Nickname_c), Nickname_c, FirstName)"}]'::jsonb, array['C']::text[]),
('115', 's2', '117', 'An app builder at Cloud Kicks has been working on changes to a Custom Shoe Sales app in a
sandbox and is ready to deploy their changes To production with a change set. Part of the work
included updates to a Permission set. What should the app builder take into consideration when
deploying the Change set to production?', '[{"letter": "A", "text": "The existing permission set will be completely overwritten."}, {"letter": "B", "text": "The deployed permission set will only contain changes related to the change set."}, {"letter": "C", "text": "Changes to field-level security in the permission set will not be applie"}, {"letter": "D", "text": "The deployed permission set will merge with the existing permission set."}]'::jsonb, array['A']::text[]),
('116', 's2', '118', 'A business user wants a quick way to edita record''s status and enter a Custom due date field
from the record''s feed in Salesforce Mobile App. What should be used to accomplish this?', '[{"letter": "A", "text": "Custom quick access link"}, {"letter": "B", "text": "Custom action"}, {"letter": "C", "text": "Custom button"}, {"letter": "D", "text": "Custom URL formula field"}]'::jsonb, array['B']::text[]),
('117', 's2', '119', 'Dream House Realty is building a custom Lightning app to track its expanding solar water
Collection business. The Lightning app currently contains a custom Lightning record page with
Standard components. From which two resources should an app builder get custom components to
bring into the new Lightning app?
Choose 2 answers', '[{"letter": "A", "text": "Import Wizard"}, {"letter": "B", "text": "Apex Code"}, {"letter": "C", "text": "Lightning Components"}, {"letter": "D", "text": "AppExchange"}]'::jsonb, array['C', 'D']::text[]),
('118', 's2', '120', 'Ursa Major Solar (UMS) is looking to hire some new employees. UMS wants to allow the same
applicant to apply for multiple open positions Using a single application. What should an app builder
recommend to meet these requirements?', '[{"letter": "A", "text": "Create a master-detail relationship field on Open Position to Application."}, {"letter": "B", "text": "Create a master-detail relationship field on Applicant to Application."}, {"letter": "C", "text": "Create a master-detail relationship field on Applicant to Open Position."}, {"letter": "D", "text": "Create a master-detail relationship field on Application to Open Position."}]'::jsonb, array['A']::text[]),
('119', 's2', '121', 'Universal Containers (UC) utilizes two custom picklist fields Called sales_Organization_c and
Pricing_Tier _ Which validation rule should an app builder use to ensure Pricing Tier_c is required for
customers with a Sales Organization _c value of Canada?', '[{"letter": "A", "text": "AND (ISPICKVAL (Sales Organization_c, ''Canada''), ISBLANK (TEXT (Pricing_Tier"}, {"letter": "B", "text": "ISPICKVAL (Sales Organization_c, ''Canada'') & ISN ULL (Pricing_Tier_c)"}, {"letter": "C", "text": "IF (ISNULL(Sales_Organization_c=''Canada'', ISBLANK (TEXT (Pricing_Tier_c)), TRUI"}, {"letter": "D", "text": "OR (ISPICKVAL (Sales Organization_c, ''Canada''), ISBLANK (TEXT"}]'::jsonb, array['A']::text[]),
('120', 's2', '122', 'The Dream House Realty (DR) service manager asks for some Improvements in case
management. They want to enforce compliance so That cases are unable to be reverted to an earlier
case status, and to Ensure that certain fields are required when specific case criteria are met. Which
solution should an app builder implement to meet these Requirements?', '[{"letter": "A", "text": "Approval process"}, {"letter": "B", "text": "De pendent picklist"}, {"letter": "C", "text": "Case flow"}, {"letter": "D", "text": "Validation rules"}]'::jsonb, array['D']::text[]),
('121', 's2', '123', 'Universal Containers (UC) wants to delete data in several fields for 5,000 Lead records. UC
exported the selected record Ids and fields that need to have data deleted in a CSV file. Which two
steps should an app builder suggest to meet these requirements?
Choose 2 answers', '[{"letter": "A", "text": "Select the correct record type."}, {"letter": "B", "text": "Use Import Wizard to update leads using the CSVfile."}, {"letter": "C", "text": "Use Data Loader to update leads using the CSV file."}, {"letter": "D", "text": "Select Insert Null Values in Settings."}]'::jsonb, array['C', 'D']::text[]),
('122', 's2', '124', 'A recently refreshed partial sandbox at Cloud Kicks has no data in The custom Object Shipping.
Checking in production, there are two million Rows of data in the object. What could be the reason
the data is missing?', '[{"letter": "A", "text": "The sandbox was refreshed too early."}, {"letter": "B", "text": "The sandbox is Still populating dat"}, {"letter": "C", "text": "The selected objects in the sandbox template."}, {"letter": "D", "text": "The partial sandbox is at capacity."}]'::jsonb, array['C']::text[]),
('123', 's2', '7 of 65', 'Universal Container'' s sales reps can modify fields on an opportunity until it Is close The sales
operations team has access to modify the Post-Close Follow-up Date and Post-Close Follow-up
Comments fields after the Opportunity is close After the opportunity is closed, the rest of the fields
Are read only. How should these requirements be met?', '[{"letter": "A", "text": "Use field-level security on page layouts to restrict editing fields."}, {"letter": "B", "text": "Use field-level security on page layouts with record types to restrict editing fields."}, {"letter": "C", "text": "Use record types with field sets and restrict editing fields using field-level security."}, {"letter": "D", "text": "Use field-level security to mark fields as read-only on the Sales profile."}]'::jsonb, array['B']::text[]),
('124', 's2', '125', 'Cloud Kicks recently implemented the application lifecycle Management process to its release
management strategy. Which category handles bug fixes and simple changes?', '[{"letter": "A", "text": "Roll"}, {"letter": "B", "text": "Major"}, {"letter": "C", "text": "Minor"}, {"letter": "D", "text": "Patch"}]'::jsonb, array['D']::text[]),
('125', 's2', '126', 'Northern Trail Outfitters wants to initiate an automatic daily up of its Salesforce org. Which
tool should an app builder recommend for this task?', '[{"letter": "A", "text": "Refresh full copy sandbox"}, {"letter": "B", "text": "Data Export Service"}, {"letter": "C", "text": "AppExchange package"}, {"letter": "D", "text": "Report export"}]'::jsonb, array['B']::text[]),
('126', 's2', '127', 'Universal Containers deployed an app in a large change set from a Developer Sandbox to a
Developer Pro Sandbox used for testing. After Testing, changes had to be made to several of the
components in the Change set. How should an app builder move the new changes to the Developer
Pro Sandbox?', '[{"letter": "A", "text": "Rename the change set, add the changes and re-deploy."}, {"letter": "B", "text": "Clone the change set and re-deploy."}, {"letter": "C", "text": "Refresh the test sandbox and re-deploy the change set."}, {"letter": "D", "text": "Update the change set and re-deploy."}]'::jsonb, array['B']::text[]),
('127', 's2', '128', 'An app builder just added a lookup field to Account from the Existing custom object, Box.
Which report type is automatically created?', '[{"letter": "A", "text": "Boxes with Accounts"}, {"letter": "B", "text": "Accounts with Boxes"}, {"letter": "C", "text": "Boxes with or without Accounts"}, {"letter": "D", "text": "Accounts with or without Boxes"}]'::jsonb, array['B']::text[]),
('128', 's2', '129', 'The app builder at Cloud Kicks has created a custom Object named Delivery_c to track the
Details of products shipped to customers. Which two actions should the app builder take to prevent
users in the shipping department from Deleting delivery records?
Choose 2 answers', '[{"letter": "A", "text": "Remove the delete button from the Delivery page layout."}, {"letter": "B", "text": "Use a permission set to remove the Delete permission."}, {"letter": "C", "text": "Remove the Delete permission from the Shipper profile."}, {"letter": "D", "text": "Change the organization-wide default of deliveries to Private."}]'::jsonb, array['A', 'C']::text[]),
('129', 's2', '130', 'DreamHouse Realty wants to import its property records from an external system into
Salesforce. The app builder will use an external ID field to house the property ID from the external
System. Which two field types are allowed as an external ID?
Choose 2 answers', '[{"letter": "A", "text": "Phone field"}, {"letter": "B", "text": "URL field"}, {"letter": "C", "text": "Text field"}, {"letter": "D", "text": "Number field"}]'::jsonb, array['C', 'D']::text[]),
('130', 's3', '132', 'Northern Trail Outfitters (NTO) has created the custom objects Trail and Park in Salesforce to
track trails and parks respectively. NTO wants to Track the total number of trails a park has on the
park record without writing any code. Which two actions should an app builder take to accomplish
this requirement?
Choose 2 answers', '[{"letter": "A", "text": "Use a formula field on the Park record to the total number of trails."}, {"letter": "B", "text": "—Use a roll-up summary field on the Park record to the total number of Trails."}, {"letter": "C", "text": "Use a master-detail relationship between the Park and Trail objects."}, {"letter": "D", "text": "Use a lookup relationship between the Park and Trail objects."}]'::jsonb, array['B', 'C']::text[]),
('131', 's3', '133', 'The VP of Sales at Universal Containers has asked the app builder to let sales reps create
opportunity records directly from the account, with a Number of fields pre-populate Which feature
should the app builder use to allow users to create the opportunity?', '[{"letter": "A", "text": "Default action"}, {"letter": "B", "text": "Quick action"}, {"letter": "C", "text": "Custom button"}, {"letter": "D", "text": "Custom link"}]'::jsonb, array['B']::text[]),
('132', 's3', '134', 'Universal Containers wants to ensure that they are accepting Clean data from their users and
verify that important fields are entere What should an app builder recommend to meet this
requirement?', '[{"letter": "A", "text": "Update the important fields to be required on the page layout."}, {"letter": "B", "text": "Create a Flow to Clean any data that is formatted wrong."}, {"letter": "C", "text": "Configure a validation to require a field for a specific record type."}, {"letter": "D", "text": "Make a formula field to check the format of the important fields."}]'::jsonb, array['C']::text[]),
('133', 's3', '135', 'Universal Containers needs the 18-digit record ID from Opportunity records when exporting
data to Excel in order to ensure each record is treated Uniquely. Which formula should an app
builder use to create this new field?', '[{"letter": "A", "text": "VALUE (14)"}, {"letter": "B", "text": "CASE SAFEID (Id)"}, {"letter": "C", "text": "TEXT (d)"}, {"letter": "D", "text": "ISNUMBER Od)"}]'::jsonb, array['B']::text[]),
('134', 's3', '136', 'Universal Containers has the Account object''s Organization-Wide Default set to Private. The
marketing team owns Accounts; however, they also Need to be able to see the sales team''s
Accounts. Both the sales and marketing teams are in completely different branches Of the role
hierarchy. Which feature should be used to enable marketing to see sales-owned accounts?', '[{"letter": "A", "text": "Sharing rules"}, {"letter": "B", "text": "Public groups"}, {"letter": "C", "text": "Aliases"}, {"letter": "D", "text": "Assignment rules"}]'::jsonb, array['A']::text[]),
('135', 's3', '137', 'A custom field on an account is used to track finance information about a customer. Only
members of the finance team have access to this fiel However, the business wants to allow one
customer service agent, who is assigned the Customer Service profile, read-only access to this field
for special Circumstances.
What is the recommended solution to grant the customer service agent access to the field?', '[{"letter": "A", "text": "Create a new profile to allow for read-only access to the field via field level security and assign it to the agent."}, {"letter": "B", "text": "Create a permission set that allows read-only access to the field via field level security and assign it to the agent."}, {"letter": "C", "text": "Update the custom field''s field level security in setup to allow the agent read-only access to the fiel"}, {"letter": "D", "text": "Update the Customer Service Profile already assigned to the agent to allow for read-only access to the field via field level security."}]'::jsonb, array['B']::text[]),
('136', 's3', '138', 'Universal Containers allows all employees to submit reviews for leadership using a custom
Object called Review. These Reviews should only be Visible to the HR department and the employee
who submitted the recor Which three steps should an app builder take to properly control access to
Reviews?
Choose 3 answers', '[{"letter": "A", "text": "Add a Master-Detail(User) field on the Review object."}, {"letter": "B", "text": "Set organization-wide default to Private."}, {"letter": "C", "text": "Remove Review Read permission from non-HR Department user Profiles."}, {"letter": "D", "text": "Disable Grant Access Using Hierarchies."}, {"letter": "E", "text": "Create a criteria-based Sharing Rule for the HR Department."}]'::jsonb, array['B', 'D', 'E']::text[]),
('137', 's3', '139', 'Which two report formats can be used as a source report to configure a reporting snapshot?
Choose 2 answers', '[{"letter": "A", "text": "Tabular format"}, {"letter": "B", "text": "Summary format"}, {"letter": "C", "text": "Joined format"}, {"letter": "D", "text": "Matrix format"}]'::jsonb, array['A', 'B']::text[]),
('138', 's3', '140', 'DreamHouse Realty is rethinking its sandbox utilization strategy after acquiring Cloud Kicks.
The Salesforce COE already utilizes a partial and a Full sandbox, which it refreshes on their own
regular schedules. Teams are expanding and have to begin each of their small projects in a sandbox
before Committing to the larger pool for collaborative testing while still keeping costs down.
Which sandbox type should be considered first?', '[{"letter": "A", "text": "Developer pro sandbox"}, {"letter": "B", "text": "Partial sandbox"}, {"letter": "C", "text": "Developer sandbox"}, {"letter": "D", "text": "Full sandbox"}]'::jsonb, array['A']::text[]),
('139', 's3', '141', 'Universal Containers (UC) tracks Account locations in Zip Code, a custom text field with a
validation rule to enforce proper formatting of the US ZIP+4 code for UC''s orders.
Which formula should the app builder create on Order to display only the first five digits Of Zip Code
from the parent Account?', '[{"letter": "A", "text": "BEGINS (Account.Zip Code_, 5)"}, {"letter": "B", "text": "LPAD (Account.Zip Code_x, 5)"}, {"letter": "C", "text": "LEFT (Account.Zip Code_c, 5)"}, {"letter": "D", "text": "TEXT (Account.Zip Code_c, 5)"}]'::jsonb, array['C']::text[]),
('140', 's3', '142', 'Cloud Kicks conducts an evaluation of sales reps with a custom Object that houses a scorecar
The company wants to ensure that only the sales reps, their managers, and their manager''s
executives can View the rep''s scorecard, but also prevent the Reps from being able to View the
executive comment fields on their review. How should these requirements be met?', '[{"letter": "A", "text": "Use a private sharing model granting record access using custom settings; manage field access with record types and page layouts."}, {"letter": "B", "text": "Use a private sharing model granting record access using hierarchy; manage field access with field-level security."}, {"letter": "C", "text": "Use a private sharing model granting record access using custom settings; manage field access with page layouts and field-level security."}, {"letter": "D", "text": "Use a private sharing model granting record access using hierarchy; manage field access with record types and field-level security."}]'::jsonb, array['B']::text[]),
('141', 's3', '143', 'AW Computing has a custom Object for service plans. A service plan needs to be associated to
one and only one contact. The support manager noticed if the wrong contact is associated, the reps
are unable to Change the contact. The app builder already confirmed the user has correct access to
the field and there are no validations associated with the service Plans. What could be causing the
issue?', '[{"letter": "A", "text": "The Read Only radio button, Allows users with at least Read access to the Master record to create, edit, or delete related Detail records, is selecte"}, {"letter": "B", "text": "The Allow reparenting checkbox, Child records can be reparented to other parent records after they are created, is unchecke"}, {"letter": "C", "text": "The Read/Write radio button, Allows users with at least Read/Write access to the Master record to create, edit, or delete related Detail records, is selecte"}, {"letter": "D", "text": "The Allow reparenting checkbox, Child records can be reparented to Other parent records after they are created, is checke"}]'::jsonb, array['B']::text[]),
('142', 's3', '144', 'Cloud Kicks wants to set up a new opportunity approval process and execute various action
items based on the initial submission. Which three action types should an app builder use in the
approval process?
Choose 3 answers', '[{"letter": "A", "text": "Realty wants to import its property records Task"}, {"letter": "B", "text": "Email Alert"}, {"letter": "C", "text": "Invocable Flow"}, {"letter": "D", "text": "Outbound Message"}, {"letter": "E", "text": "Decision Element"}]'::jsonb, array['B', 'D']::text[]),
('143', 's3', '145', 'Due to the complexity of the Universal Containers sandbox release schedule and
requirements, it is advised that change sets are used as often As possible to migrate from one
environment to another. Which three common items can an app builder move when using a change
set?
Choose 3 answers', '[{"letter": "A", "text": "Web-to-lead"}, {"letter": "B", "text": "Standard fields"}, {"letter": "C", "text": "Custom Object"}, {"letter": "D", "text": "Apex class"}, {"letter": "E", "text": "Custom field"}]'::jsonb, array['C', 'D', 'E']::text[]),
('144', 's3', '146', 'An app builder installed a custom Lightning component from AppExchange. What should be
done next in order to configure the component for use in a record page?', '[{"letter": "A", "text": "Edit a record page using the Page Layout editor > Drag the Visualforce component onto the page."}, {"letter": "B", "text": "Edit a record page using Lightning App Builder > Drag the component onto the page."}, {"letter": "C", "text": "Edit a record page using App Manager > Drag the component onto the page."}, {"letter": "D", "text": "Edit a record page using the Page Layout editor > Drag the component onto the page."}]'::jsonb, array['B']::text[]),
('145', 's3', '147', 'An app builder has a custom component they want to make available on the utility bar, but
the component is unavailable. How should the component be tagged?', '[{"letter": "A", "text": "For use in App Manager."}, {"letter": "B", "text": "For use in Lightning App Builder."}, {"letter": "C", "text": "For use on record pages."}, {"letter": "D", "text": "For use on the utility bar."}]'::jsonb, array['D']::text[]),
('146', 's3', '148', 'The marketing director is concerned that too many car parts were given away for free last
year. They want to track discounts, samples, and Giveaways by Sales Rep. The manager'' s sign-off on
free parts also needs to be processe Which functionality should an app builder use to meet these
requirements?', '[{"letter": "A", "text": "High Velocity Sales"}, {"letter": "B", "text": "Quotes"}, {"letter": "C", "text": "Approval process"}, {"letter": "D", "text": "Check box"}]'::jsonb, array['C']::text[]),
('147', 's3', '149', 'Universal Containers has deployed custom tabs to production via change sets, without
including the profile settings or permission sets. What is the setting for the visibility of custom tabs?', '[{"letter": "A", "text": "Custom tabs are hidden for all users."}, {"letter": "B", "text": "Custom tabs are default off for all users."}, {"letter": "C", "text": "Custom tabs are default on for all users."}, {"letter": "D", "text": "Custom tabs are NOT deploye"}]'::jsonb, array['A']::text[]),
('148', 's3', '150', 'Universal Containers expects impacts to operations due to increased deman The executive
team will reach out to current customers and wants To see the number of open cases for the account
and parent account. What should an app builder use to display the number of open cases on the
account page?', '[{"letter": "A", "text": "Approval Process"}, {"letter": "B", "text": "Flow"}, {"letter": "C", "text": "Custom Object"}, {"letter": "D", "text": "Roll-up summary"}]'::jsonb, array['D']::text[]),
('149', 's3', '151', 'DreamHouse Realty (DR) is expanding into subsidized housing by partnering with local
government entities. DR uses Sales Cloud and has Enabled field history tracking on the Opportunity
object. Due to increased information requirements, the App Dev team is changing Text Area (Long)
fields To Rich Text fields to allow for up to 1,000 characters and better descriptions. Which two
considerations should be made by the team?
Choose 2 answers', '[{"letter": "A", "text": "Data loss may occur when changing custom field types."}, {"letter": "B", "text": "Audit Trail is available through REST API extracts."}, {"letter": "C", "text": "Rich text field values of all lengths are displayed fully in reports."}, {"letter": "D", "text": "Field History Tracking records value changes of 255 characters or less."}]'::jsonb, array['A', 'D']::text[]),
('150', 's3', '152', 'Service Agents are required to confirm a user''s identity before providing support information
over the phone. Which feature can an app builder use to help agents meet this requirement?', '[{"letter": "A", "text": "Add Path to the top of the Case layout"}, {"letter": "B", "text": "Case Validation Rules"}, {"letter": "C", "text": "Include Surveys as a Case related list"}, {"letter": "D", "text": "Guided Action Flows on the record page"}]'::jsonb, array['D']::text[]),
('151', 's3', '153', 'Universal Containers wants users to have access to the pricing guidelines document when
viewing a Contract related to an Account. Which feature should an app builder use to create easy
access to the document?', '[{"letter": "A", "text": "A custom detail page link on the Account Object"}, {"letter": "B", "text": "Quick Action on the Account Object"}, {"letter": "C", "text": "A custom detail page link on the Contract Object"}, {"letter": "D", "text": "Quick Action on the Contracts Object"}]'::jsonb, array['C']::text[]),
('152', 's3', '154', 'Universal Containers wants to collaborate with its customers within Salesforce and has
decided to enable the Allow Customer Invitations in the Chatter Settings. Which permission is
granted to customers when invited to a Chatter group?', '[{"letter": "A", "text": "The ability to invite members to groups of which they are a member."}, {"letter": "B", "text": "The ability to interact with members of their groups."}, {"letter": "C", "text": "The ability to mention accounts of which they are a contact."}, {"letter": "D", "text": "The ability to request access to public groups."}]'::jsonb, array['B']::text[]),
('153', 's3', '155', 'Universal Containers created a custom Object called Component to capture details about
products sol Which approach should an app builder take to Component as a related list on
Product?', '[{"letter": "A", "text": "Create a junction Object to relate Component and Product. Add the Component related list to the Product page layout."}, {"letter": "B", "text": "Create a roll-up on Product. Add the Component related list to the Product page layout."}, {"letter": "C", "text": "Create a lookup relationship on Component to Product. Add the Component related list to the Product page layout."}, {"letter": "D", "text": "Create a master-detail relationship on Product to Component. Add the Component related list to the Product page layout."}]'::jsonb, array['C']::text[]),
('154', 's3', '156', 'Managers at Universal Containers want a quick way to create additional accounts to form a
hierarchy from a Parent Account recor They want To auto-populate five fields based on the parent to
make it easier for users to create the Child accounts quickly. What should the app builder
recommend?', '[{"letter": "A", "text": "Customize a Global Quick Action"}, {"letter": "B", "text": "Add Path on Account hierarchy"}, {"letter": "C", "text": "Add a custom link on Account"}, {"letter": "D", "text": "Create a custom action"}]'::jsonb, array['D']::text[]),
('155', 's3', '157', 'Universal Containers has a single Contact Lightning record page. A component takes up a lot
of room on the page and is NOT needed by users With a Marketing profile. What should the app
builder use to solve this issue?', '[{"letter": "A", "text": "Component visibility filter"}, {"letter": "B", "text": "AppExchange"}, {"letter": "C", "text": "Detail page layouts"}, {"letter": "D", "text": "Field-level security"}]'::jsonb, array['A']::text[]),
('156', 's3', '158', 'Cloud Kicks (CK) wants to track orders against inventory, ensuring its ability to fulfill order
requests. CK created a junction Object called Request Inventory to enable many-to-many
relationships with the Inventory and Order objects.
What does the app builder need to provide to ensure users can View Request Inventory records?', '[{"letter": "A", "text": "Apex-based sharing on the first master Object."}, {"letter": "B", "text": "Read access to both master objects."}, {"letter": "C", "text": "Sharing rules on Request Inventory Object."}, {"letter": "D", "text": "Read access to the first master Object."}]'::jsonb, array['B']::text[]),
('157', 's3', '159', 'Cloud Kicks is redefining its entire business process to convert the Manager Notes field from a
long text area fiel The goal is to encourage Managers to be more concise in their comments and stay
at 255 characters or less. There is preexisting information in the Manager Notes field that often Is
well beyond the character limit. What would happen to any existing information if the app builder
tries to convert a preexisting long text area field to text area?', '[{"letter": "A", "text": "Preexisting information will truncate to the first 255 characters."}, {"letter": "B", "text": "Preexisting information will cause an error message to pop up."}, {"letter": "C", "text": "Preexisting information will remain even if it was over 255 characters."}, {"letter": "D", "text": "Preexisting information in the field will be completely Iost."}]'::jsonb, array['A']::text[]),
('158', 's3', '160', 'A user is unable to use inline editing on a list view. A quick check verifies the user should be
able to perform inline editing as they have been Assigned the appropriate permissions.
Which condition should the app builder review?', '[{"letter": "A", "text": "If the list View selected is locked by another user"}, {"letter": "B", "text": "If the list View restricts sharing for the user"}, {"letter": "C", "text": "If the list View contains a chart created by the user"}, {"letter": "D", "text": "If the list View contains more than one record type"}]'::jsonb, array['B']::text[]),
('159', 's3', '161', 'An app builder needs a custom solution and is considering using either AppExchange or their
local developer community. The app builder wants To minimize the need for manual maintenance.
What should the app builder consider?', '[{"letter": "A", "text": "An open-source unmanaged package"}, {"letter": "B", "text": "An unmanaged package from AppExchange"}, {"letter": "C", "text": "An open-source custom development"}, {"letter": "D", "text": "A managed package from AppExchange"}]'::jsonb, array['D']::text[]),
('160', 's3', '162', 'Cloud Kicks wants to display the number of Opportunity records associated with each
Account. Which solution should be used?', '[{"letter": "A", "text": "Formula field"}, {"letter": "B", "text": "AppExchange offering"}, {"letter": "C", "text": "Lookup field"}, {"letter": "D", "text": "Roll-up summary field"}]'::jsonb, array['D']::text[]),
('161', 's3', '163', 'Cloud Kicks wants to display 12 key fields at once in a separate section at the top of
opportunity records on the desktop. Which component should an app builder add to the record page
to enable this functionality?', '[{"letter": "A", "text": "Custom Lightning Web Component"}, {"letter": "B", "text": "Highlights Panel"}, {"letter": "C", "text": "Path"}, {"letter": "D", "text": "Accordion"}]'::jsonb, array['B']::text[]),
('162', 's3', '164', 'Sales reps at Cloud Kicks (CK) forget to submit for approval when CK needs orders reviewed
before close won. CK wants to automatically submit Opportunities into the Secure Commitment
Stage to eliminate manual submission.
Which feature meets the business requirements?', '[{"letter": "A", "text": "Record-Triggered flow optimized for Fast Field Updates"}, {"letter": "B", "text": "Custom button and screen flow"}, {"letter": "C", "text": "Platform Event-Triggered flow"}, {"letter": "D", "text": "Record-Triggered flow optimized for Actions and Related Records"}]'::jsonb, array['D']::text[]),
('163', 's3', '165', 'Cloud Kicks wants to make sure that users without the Marketing role are unable to update
the Contact Retail Opt In picklist field to Yes. Which validation rule should an app builder use to
prevent other users from making this update?', '[{"letter": "A", "text": "AND #UserRoIe.Name Marketing, Retail"}, {"letter": "B", "text": "AND UserRole.Name Marketing\", Retail Opt_ln_e=\"Yes\")"}, {"letter": "C", "text": "AND UserRole.Name = \"Marketing'', ISCHANGED (Retail ISPICKVAL (Retail Opt_ln_c, \"Yes\"))"}, {"letter": "D", "text": "AND UserRoIe.Name Marketing'', ISPICKVAL (Retail Opt_ln_e, \"Yes\"))"}]'::jsonb, array['C']::text[]),
('164', 's3', '166', 'An app builder is creating a custom Object called Testimonial_c and wants to connect
Testimonial c records with both the submitter''s Contact record and Account recor If the Account is
deleted, the Testimonial c records should also be delete If the Contact is deleted, but the Account
remains, the Testimonial c records should remain.
How should this be accomplished?', '[{"letter": "A", "text": "Create a lookup relationship from Testimonial_to Account and a master-detail relationship from Testimonial to Contact."}, {"letter": "B", "text": "Make Testimonial ca junction Object between Account and Contact using master-detail relationships."}, {"letter": "C", "text": "Create a master-detail relationship from Testimonial_to Account and a lookup relationship from Testimonial To Contact."}, {"letter": "D", "text": "Make both the Contact and Account fields required on the Testimonial Object and create lookup relationships from Testimonial_cto Contact and to Account."}]'::jsonb, array['C']::text[]),
('165', 's3', '167', 'Universal Containers (UC) wants to test code against a subset of production data that is under
5 G Additionally, UC wants to refresh this sandbox every Weeken Which type of sandbox should be
used to accomplish this?', '[{"letter": "A", "text": "Developer Pro"}, {"letter": "B", "text": "Partial Copy"}, {"letter": "C", "text": "Full copy"}, {"letter": "D", "text": "Developer"}]'::jsonb, array['B']::text[]),
('166', 's3', '168', 'Cloud Kicks (CK) wants to quickly insert a list of over 1 million net new Accounts. The template
based on CK''s data model was used to populate The list. Which tool should be used?', '[{"letter": "A", "text": "Data Loader"}, {"letter": "B", "text": "Import Wizard"}, {"letter": "C", "text": "Schema Builder"}, {"letter": "D", "text": "Lightning Object Creator"}]'::jsonb, array['A']::text[]),
('167', 's3', '169', 'DreamHouse Realty (DR) asks for some improvements in case management. They want to
enforce process compliance so that cases are unable To be reverted to an earlier case status, and to
ensure that certain fields are required when specific case criteria are met. Which solution should an
app builder implement to meet these requirements?', '[{"letter": "A", "text": "Configure validation rules with help text."}, {"letter": "B", "text": "Create dependent picklist fields and set them as require"}, {"letter": "C", "text": "Use an approval process to check field criteria are met."}, {"letter": "D", "text": "Make the fields required on the page layout."}]'::jsonb, array['A']::text[]),
('168', 's3', '170', 'Sales Managers want to be automatically notified any time there is a change to an
Opportunity Close Date and want these changes to be tracked On the Opportunity. Which two
configurations should an app builder recommend?
Choose 2 answers', '[{"letter": "A", "text": "Enable Feed Tracking on Opportunities."}, {"letter": "B", "text": "Create an Opportunity outbound message."}, {"letter": "C", "text": "Activate Historical Trending for Opportunities."}, {"letter": "D", "text": "Use a record-triggered flow on Opportunity and a Chatter post action."}]'::jsonb, array['A', 'D']::text[]),
('169', 's3', '171', 'A Cloud Kicks employee submitted an opportunity for approval by their manager. What will
happen if the employee attempts to edit the description field after submission?', '[{"letter": "A", "text": "User will be able to edit the description field only."}, {"letter": "B", "text": "User will be presented with a ''Record Lock'' notification."}, {"letter": "C", "text": "User will be able to edit the name, but unable to edit the description."}, {"letter": "D", "text": "User will see the record is now owned by their manager."}]'::jsonb, array['B']::text[]),
('170', 's3', '172', 'Ursa Major Solar wants to automate a welcome email to new clients and include a customized
survey about their buying experience. An app Builder is tasked with this project and has very little
time to build the solution from scratch, but Still needs to be able to fully customize the solution.
What should the app builder do to meet the deadline and custom requirements?', '[{"letter": "A", "text": "Work with a developer to create custom Apex code and a Lightning web component survey to meet the criteria"}, {"letter": "B", "text": "Use Salesforce flow to build the survey declaratively to meet the criteria and send it to the customer as an email."}, {"letter": "C", "text": "Choose a managed package from AppExchange that closely meets the requirements of the project, restricts programmatic development, but allows declarative development."}, {"letter": "D", "text": "Choose an unmanaged package from AppExchange that closely meets the requirements of the project and allows programmatic development."}]'::jsonb, array['B']::text[]),
('171', 's3', '173', 'When an opportunity has a closed date that is pushed more than 30 days, manager approval is
require An approval process is in place but Reps frequently forget to submit for approval to run the
process. How can an app builder ensure that these opportunities are submitted into the approval
process?', '[{"letter": "A", "text": "Change the entry criteria on the approval process to criteria are met and lock the record on initial submission."}, {"letter": "B", "text": "Use a validation rule and an email alert to the manager requesting approval."}, {"letter": "C", "text": "Submit the record for approval from an automated process."}, {"letter": "D", "text": "Give the manager the \"API Enabled\" permission to permit approval responses by email."}]'::jsonb, array['C']::text[]),
('172', 's3', '174', 'What are the limitations of Schema Builder when creating a custom object?', '[{"letter": "A", "text": "Fields and relationships can be created, but they will be unable to add the fields to the page layout from the canvas."}, {"letter": "B", "text": "Custom fields can be added to any custom objects, excluding formula field types."}, {"letter": "C", "text": "Relationships can be made to any custom objects, but any relationships to standard objects should be built in Lightning Object Manager."}, {"letter": "D", "text": "\"Save\" should be clicked each time a new object, field, or relationship is create"}]'::jsonb, array['A']::text[]),
('173', 's3', '175', 'Universal Containers is setting up Salesforce for the first time. Management wants the sales
and marketing teams to have different navigation menus in The Salesforce Mobile App. Which option
is available to an app builder to satisfy this requirement?', '[{"letter": "A", "text": "Create public groups for sales and marketing and create mobile navigation menus for each group."}, {"letter": "B", "text": "Create sales and marketing apps and assign the respective profiles to each app."}, {"letter": "C", "text": "Create roles for sales and marketing and assign a custom homepage layout for each role."}, {"letter": "D", "text": "Create mobile navigation menus for both the sales and marketing profiles."}]'::jsonb, array['B']::text[]),
('174', 's3', '176', 'Ursa Major Solar wants to provide sales console users with an incredible experience, with the
most-used components easily accessible at all Times.
Which solution can enable reps to see and access these components from anywhere within the app
without leaving the page where the team is working?', '[{"letter": "A", "text": "Utility bar"}, {"letter": "B", "text": "Home page"}, {"letter": "C", "text": "Favorites"}, {"letter": "D", "text": "Global actions"}]'::jsonb, array['A']::text[]),
('175', 's3', '177', 'An app builder at Northern Trail Outfitters created a sandbox template for Accounts, Projects,
and Project Milestones to reconfigure some flows for the project management app. Which type of
testing environment should the app builder create?', '[{"letter": "A", "text": "Partial Copy"}, {"letter": "B", "text": "Scratch Org"}, {"letter": "C", "text": "Developer"}, {"letter": "D", "text": "Developer Pro"}]'::jsonb, array['A']::text[]),
('176', 's3', '178', 'A new field has been added to the Applicant Object that is part of an unmanaged package. A
recruiter ran the Position with or without Applicants Report and noticed that the new field was
missing as an option to add as a column. How should an app builder troubleshoot this issue?', '[{"letter": "A", "text": "Add the field to the custom report type field layout."}, {"letter": "B", "text": "Adjust the field level security to include in the report type."}, {"letter": "C", "text": "Check Allow Reports for the position and applicant Objects."}, {"letter": "D", "text": "Update the profile with the Manage Public Reports permission."}]'::jsonb, array['A']::text[]),
('177', 's3', '179', 'Universal Containers (UC) has large data volumes and is nearing data storage limits. The
planned solution is to archive historical data to reduce Data storage in Salesforce; however, UC would
still like to use reports, queries, and lookups on the archived information. Which two options could
meet this requirement?
Choose 2 answers', '[{"letter": "A", "text": "Related objects"}, {"letter": "B", "text": "Custom objects"}, {"letter": "C", "text": "External objects"}, {"letter": "D", "text": "Big objects"}]'::jsonb, array['C', 'D']::text[]),
('178', 's3', '180', 'DreamHouse Realty (DR) employees started using company-owned airplanes for work travel
after Ursa Major Solar was acquire DR executives Want to automate the submission travel request
forms to enforce the internal policy. How should an app builder automate travel requests based on
these criteria?', '[{"letter": "A", "text": "Assignment rule"}, {"letter": "B", "text": "Validation rule"}, {"letter": "C", "text": "Apex"}, {"letter": "D", "text": "Approval process"}]'::jsonb, array['D']::text[]),
('179', 's3', '181', 'The Director of Customer Service wants to receive a notification when a case stays in the new
status for more than four business hours. Which two automation processes should be used to
accomplish this?
Choose 2 answers', '[{"letter": "A", "text": "Validation Rule"}, {"letter": "B", "text": "Flow Builder"}, {"letter": "C", "text": "Scheduled Apex"}, {"letter": "D", "text": "Escalation rules"}]'::jsonb, array['B', 'D']::text[]),
('180', 's3', '182', 'The app builder at Ursa Major Solar created a master-detail relationship between a parent
Object Galaxy_c and Child Object star _ What is the effect of creating this type of relationship if users
want to report on Galaxy_c with star_c?', '[{"letter": "A", "text": "A Star_c report type with Galaxy_cas a field will be automatically create"}, {"letter": "B", "text": "A new custom report type will need to be created for Galaxy_c with Star _"}, {"letter": "C", "text": "A Galaxy_c with Star_c report type will be automatically create"}, {"letter": "D", "text": "A new custom report type will need to be created for Staz_c with lookup fields from Galaxy"}]'::jsonb, array['C']::text[]),
('181', 's3', '183', 'After utilizing the Lightning Object Creator to create a new object, its fields, and to insert all of
the data, an app builder now needs to set up the Lightning Record Page. Which component should
the app builder have on their Lightning Record Page to see all of the fields from the page layout?', '[{"letter": "A", "text": "Highlights Panel"}, {"letter": "B", "text": "Recommendations"}, {"letter": "C", "text": "Record Detail"}, {"letter": "D", "text": "Path"}]'::jsonb, array['C']::text[]),
('182', 's3', '184', 'Cloud Kicks (CK) switched to Lightning Experience and started using Chatter across its
globalworkforce to support its fast-paced sales cycle. CK Loves Chatter but struggle with gathering
feed from core team members, including understanding who is availableto respon Which two ways
could CK use Chatter to solve this problem?
Choose 2 answers', '[{"letter": "A", "text": "Streams"}, {"letter": "B", "text": "Topics"}, {"letter": "C", "text": "Polls"}, {"letter": "D", "text": "Out of Office"}]'::jsonb, array['C', 'D']::text[]),
('183', 's3', '185', 'A new field is being created on a custom object. However, the app builder does not want the
field to up on pre-existing custom report Types. What should the app builder do on the custom field
setup to fulfill this requirement?', '[{"letter": "A", "text": "Remove the new field from all page layouts."}, {"letter": "B", "text": "Remove visibility to all report profiles."}, {"letter": "C", "text": "Grant read-only access to all report profiles."}, {"letter": "D", "text": "Deselect auto add to custom report type."}]'::jsonb, array['D']::text[]),
('184', 's3', '186', 'Cloud Kicks has a sales rep who is stating that their Contact is unavailable for other users to
see within Salesforce. In which three ways can an app builder troubleshoot this issue?
Choose 3 answers', '[{"letter": "A", "text": "Review the Contact record and ensure it is linked to an Account."}, {"letter": "B", "text": "Create a new Contact and have the users try again."}, {"letter": "C", "text": "Verify the users with the issue have access to the Contact Object."}, {"letter": "D", "text": "Create an Account Sharing Rule to give the users access to all records."}, {"letter": "E", "text": "Confirm whether Default Organization-Wide Sharing Settings provide access to the Account."}]'::jsonb, array['A', 'C', 'E']::text[]),
('185', 's3', '187', 'Ursa Major Solar''s service department gets requests for several types of services, such as
installation, repair, and maintenance. Service Managers need to be able to tell when maintenance
was last done on an asset to help determine if they are meeting contract agreements, but the last
Maintenance date can be difficult to determine when there are many work orders related to the
asset. They think it would be helpful to have a field auto- Populated on the Asset record when a
maintenance work order gets close Which tool should an app builder recommend to help meet this
requirement?', '[{"letter": "A", "text": "Flow"}, {"letter": "B", "text": "Einstein Next Best Action"}, {"letter": "C", "text": "Roll-up Summary"}, {"letter": "D", "text": "Apex Trigger"}]'::jsonb, array['A']::text[]),
('186', 's3', '188', 'At Ursa Major Solar, there is a single Lightning record page for the Celestial Bodies custom
object; however, there is a Lightning component the
App builder wants to restrict to mobile app users.
Which feature in the Lightning app builder should be utilized?', '[{"letter": "A", "text": "Form factor checkboxes"}, {"letter": "B", "text": "Highlights panel"}, {"letter": "C", "text": "Related list quick links"}, {"letter": "D", "text": "Component visibility filter"}]'::jsonb, array['D']::text[]),
('187', 's3', '189', 'Cloud Kicks wants to know the total value of all won Opportunities for Accounts and display it
on the record.
Which type of summary should the app builder use in the roll-up summary field?', '[{"letter": "A", "text": "Count"}, {"letter": "B", "text": "Total"}, {"letter": "C", "text": "Aggregate"}, {"letter": "D", "text": "Sum"}]'::jsonb, array['D']::text[]),
('188', 's3', '190', 'An app builder installs an unmanaged package in a full copy sandbox that is an exact
match for production, and now they are ready to install it in production. The app builder
attempts to install the package in production, and it fails.
Why did the package fail to install?', '[{"letter": "A", "text": "Internet license types"}, {"letter": "B", "text": "Apex unit test failures"}, {"letter": "C", "text": "Package features set compatible"}, {"letter": "D", "text": "Object items exceeded"}]'::jsonb, array['B']::text[]),
('189', 's3', '191', 'DreamHouse Realty wants to make sure an Opportunity has a field,
populated before it is allowed to enter the qualified stage.
How should an app builder solution this request?', '[{"letter": "A", "text": "Record Type"}, {"letter": "B", "text": "Active History"}, {"letter": "C", "text": "Open Layout"}, {"letter": "D", "text": "Validation Rule"}]'::jsonb, array['D']::text[]),
('190', 's3', '192', 'An app builder wants to create a formula field on an Account to include data from
related Contacts but is unable to find the relationship in the formula editor.
What is a limitation of formulas that could be causing the issue?', '[{"letter": "A", "text": "Control and Account objects: 0.00 or 1 have a Master-Detail Relationship."}, {"letter": "B", "text": "Store Data: 3000 characters in the formula."}, {"letter": "C", "text": "Formula field that reached on the Account object."}, {"letter": "D", "text": "unable to reference the Child records."}]'::jsonb, array['C']::text[]),
('191', 's3', '193', 'An app builder is loading data into Salesforce. To link the new records back to the legacy
system, a field will be used to track the legacy ID on the Account object. For future data
loads this ID will be used when upsetting records.
Which two field attributes should be selected?
Choose 2 answers', '[{"letter": "A", "text": "Text (encrypted)"}, {"letter": "B", "text": "External ID"}, {"letter": "C", "text": "Unique"}, {"letter": "D", "text": "Request"}]'::jsonb, array['B', 'C']::text[]),
('192', 's3', '195', 'Ursa Major Solar has a lookup relationship between a custom ''delay? Object and a
custom ''Size_s object. An app builder wants to create a roll-up summary field that counts
the total number of ''Size_'' records related to each ''delay: record.
How would the current configuration impact the ability to achieve the desired result?', '[{"letter": "A", "text": "The roll-up summary can be achieved by creating a formula field on the ''delay: object."}, {"letter": "B", "text": "This lookup relationship will need to be converted to a master-detail relationship before a roll-up summary field can be created."}, {"letter": "C", "text": "A roll-up summary field will need to be created on the ''delay _ & Object with a field filter that selects all related ''Size records."}, {"letter": "D", "text": "The roll-up summary can be achieved by creating a formula field on the *Size_'' object."}]'::jsonb, array['B']::text[]),
('193', 's3', '196', 'Universal Containers wants to understand return on investment for the Iatest
advertising buy. They currently use a private security model for all objects.
What should an app builder recommend?', '[{"letter": "A", "text": "On an opportunities pipeline report"}, {"letter": "B", "text": "Online Account Hierarchies and Raft Up Summary fields"}, {"letter": "C", "text": "Configure Campaign Hierarchies and Campaign stasmics"}, {"letter": "D", "text": "Change to a public security model"}]'::jsonb, array['C']::text[]),
('194', 's3', '197', 'Cloud Kicks has a custom Object with a private sharing setting. The business wants to
share individual records with specific people or departments on a case-by-case basis.
Which three options does the business user have to manually share individual records?
Choose 3 answers', '[{"letter": "A", "text": "Permission Set Groups"}, {"letter": "B", "text": "Roles and Subscriptions"}, {"letter": "C", "text": "Public Groups"}, {"letter": "D", "text": "ID Users"}, {"letter": "E", "text": "Private Groups"}]'::jsonb, array['B', 'C', 'D']::text[]),
('195', 's3', '198', 'Universal Containers (UC) has several large customers that sell their products through
dealers. UC identifies and works with a single individual at each customer and at each dealer.
Separate bills are sent to each customer and each dealer. These details need to be stored in
a format that clearly displays the business entities and their appropriate representatives.
How should an app builder implement these requirements?', '[{"letter": "A", "text": "Create a single parent record, add each rep as a contact to the parent account and add each dealer as a child/group."}, {"letter": "B", "text": "Create both customer and dealer as accounts, add each rep as a contact to the corresponding account and create an account hierarchy."}, {"letter": "C", "text": "Create a single account record, add each rep as a contact and create a custom dealer object."}, {"letter": "D", "text": "Create both customer and dealer as accounts, create account teams on each account and associate the dealer records with the parent account."}]'::jsonb, array['B']::text[]),
('196', 's3', '199', 'Ursa Major Solar wants to create a relationship between the standard Contact Object
and a custom Solar Project object. Contacts can potentially be related to multiple Solar
Project objects, and a Solar Project can have multiple Contracts associated with it.
How should an app builder configure the data model?', '[{"letter": "A", "text": "One Lookup relationship on Contact and our Lookup relationship on Solar Project"}, {"letter": "B", "text": "The Lookup relationship on a new custom Object"}, {"letter": "C", "text": "Two master-detail relationship on a new custom Object"}, {"letter": "D", "text": "Our Master-About relationship on Contact and our Master-About relationship on Solar Project"}]'::jsonb, array['C']::text[]),
('197', 's3', '200', 'Ursa Major Solar (UNS) uses a public sharing model for accounts. UNS would like to
move to a more restrictive sharing model but wants the Sales team to continue to have
access to all account records with the sales record type.
Which two actions should an app builder complete to implement this change?
Choose 2 answers', '[{"letter": "A", "text": "Create a custom-based sharing rule."}, {"letter": "B", "text": "Update the organization-wide defaults."}, {"letter": "C", "text": "Update the Sales profile."}, {"letter": "D", "text": "Create an owner-based sharing rule."}]'::jsonb, array['A', 'B']::text[]),
('198', 's4', '204', 'An app builder wants to create a new field using Schema Builder.
Who will get access to the new field by default?', '[{"letter": "A", "text": "No profiles"}, {"letter": "B", "text": "All profiles"}, {"letter": "C", "text": "Internal profiles"}, {"letter": "D", "text": "Standard profiles"}]'::jsonb, array['C']::text[]),
('199', 's4', '207', 'Universal Containers has created two custom objects called Seminars and Attendees.
Organization-wide defaults for these objects have been set to Private. Universal Containers
wants to set up a new junction Object between these custom objects. A select group of users
should be able to edit records in the junction object.
Which two steps should an app builder take to configure the proper security?
Choose 2 answers', '[{"letter": "A", "text": "Create owner-based sharing rules that give Read access to the master objects."}, {"letter": "B", "text": "Set lookup filters on both junction Object relationship fields."}, {"letter": "C", "text": "Set Sharing Settings to Read Only on both Master-Detail relationship fields."}, {"letter": "D", "text": "Create an owner-based sharing rule that gives Read access to the junction Object."}]'::jsonb, array['A', 'C']::text[]),
('200', 's4', '211', 'DreamHouse Realty wants to make sure an Opportunity has a field,
Expected_Close_Date_c, populated before it is allowed to enter the qualified stage.
How should an app builder solution this request?', '[{"letter": "A", "text": "Page Layout"}, {"letter": "B", "text": "Validation Rule"}, {"letter": "C", "text": "Activity History"}, {"letter": "D", "text": "Record Type"}]'::jsonb, array['B']::text[]),
('201', 's4', '212', 'Sales managers at Cloud Kicks would like to standardize what information sales reps are
gathering.
Sales reps want recommendations, sales strategies and to know what key fields need to be
completed at each step of the sales process on the opportunity record.
Which feature should an app builder use to provide this functionality?', '[{"letter": "A", "text": "Path"}, {"letter": "B", "text": "Other Red"}, {"letter": "C", "text": "Approval Process"}, {"letter": "D", "text": "Global Action"}]'::jsonb, array['A']::text[]),
('202', 's4', '213', 'The Service Manager provided the app builder with color code requirements for case
age on open cases.
- New cases populate a green circle.
- Day-old cases populate a yellow circle.
- Three day-old cases populate a red circle.
How should an app builder implement this requirement?', '[{"letter": "A", "text": "Custom Button"}, {"letter": "B", "text": "Quick Action"}, {"letter": "C", "text": "Formula Field"}, {"letter": "D", "text": "Lightning Web Component"}]'::jsonb, array['C']::text[]),
('203', 's4', '214', 'Ursa Major Solar wants to see the Type field from the parent Object Galaxy listed on the
Child record Star. The app builder is receiving an error stating "Picklist values are only
supported in certain functions".
Which formula should an app builder use to achieve the desired result?', '[{"letter": "A", "text": "TEXT(BRls"}]'::jsonb, array['C']::text[]),
('204', 's4', '215', 'Universal Containers require different fields to be filled out at each stage of the
Opportunity sales process.
Which configuration steps can an app builder use to meet this requirement?', '[{"letter": "A", "text": "Create a validation rule to prevent the user for field information."}, {"letter": "B", "text": "Set asset format required inside based on the current stages."}, {"letter": "C", "text": "Define record types and agree formats for each stage."}, {"letter": "D", "text": "Add the Path component to the Lightning record page."}]'::jsonb, array['D']::text[]),
('205', 's4', '216', 'An app builder has created a custom Lightning App and wants to make it available to
the internal users at Universal Containers.
Which two steps are necessary to accomplish this task?
Choose 2 answers:', '[{"letter": "A", "text": "Asking new options."}, {"letter": "B", "text": "Build a Custom Tab for the app."}, {"letter": "C", "text": "Add the app to a Vendor or page."}, {"letter": "D", "text": "Make it the app to Static Position."}]'::jsonb, array['B', 'C']::text[]),
('206', 's4', '217', 'Universal Containers uses a custom picklist called ''Account _ Region_s or the Account
object. The vice president of sales has asked that the value of this field is visible on
Opportunities.
How should an app builder create this solution?', '[{"letter": "A", "text": "Field History tacking"}, {"letter": "B", "text": "Cross-object formula"}, {"letter": "C", "text": "Linking field"}, {"letter": "D", "text": "Field-level security"}]'::jsonb, array['A']::text[]),
('207', 's4', '218', 'Cloud Kicks (CK) has a formula field *specialty_'' or Opportunity that gets its value from
the ''specialty_'' field on the related Account. CK has changed its processes to allow
opportunities to have different values for ''Specialty_'' than their Account.
How can sales reps enter values for the ''specialty field on Opportunity, while preserving
the values on existing opportunities?', '[{"letter": "A", "text": "Extent the data, convert the field to *GETTINGS and mount the data."}, {"letter": "B", "text": "Convert the field to a text field and the values in the left."}, {"letter": "C", "text": "Create a new text field and keep using the existing formula field."}, {"letter": "D", "text": "Create a new text field and import the formula field values in it."}]'::jsonb, array['D']::text[]),
('208', 's4', '219', 'Cloud Kicks has five years of sales data and would like to track when customers made
their first purchase.
How should an app builder use a roll-up summary to meet the requirements?', '[{"letter": "A", "text": "Create a new date field called First Order Date, then create roll-up summary to update the field using Type MIN."}, {"letter": "B", "text": "Create a new roll-up summary field called First Order Date, Using type MIN on the Opportunity Close Date with a filter where iswon = TRUE."}, {"letter": "C", "text": "Create a new date field called First Order Date, then set the date using a roll-up summary on Opportunity Close Date."}, {"letter": "D", "text": "Create a new roll-up summary field called First Order Date using type SUM on Opportunity Close Date."}]'::jsonb, array['B']::text[]),
('209', 's4', '220', 'Cloud Kicks (CK) captures all shipping information in a custom Object called
Shipments_c. CK''s app builder is tasked with creating an approval process to
ensure department members can approve all overnight shipments.
Where should the app builder route the approval request?', '[{"letter": "A", "text": "Role"}, {"letter": "B", "text": "Queve"}, {"letter": "C", "text": "Hierarchyfiele"}, {"letter": "D", "text": "Public group"}]'::jsonb, array['D']::text[]),
('210', 's4', '221', 'An app builder at Cloud Kicks created a custom Object and related fields in the schema
builder.
Which next steps should the app build take
to ensure users can access the new Object and fields?', '[{"letter": "A", "text": "Add the fields to the page layout on the Object"}, {"letter": "B", "text": "Allow reporting for the Object and fields."}, {"letter": "C", "text": "Create a permission set for access to the Object and fields."}, {"letter": "D", "text": "Assign data types to the fields on the abject,"}]'::jsonb, array['A']::text[]),
('211', 's4', '222', 'An app builder needs to create new automation on an Object.
Which best practice should the app builder follow when building out automation?', '[{"letter": "A", "text": "On Flow per Object"}, {"letter": "B", "text": "On validation rule per Object"}, {"letter": "C", "text": "One invocable process per Object"}, {"letter": "D", "text": "One record change process per Object"}]'::jsonb, array['A']::text[]),
('212', 's4', '223', 'Universal Containers has purchased a lightning component on the AppExchange.
In which two areas can these components be used?
Choose 2 answers', '[{"letter": "A", "text": "Lightning App Builder"}, {"letter": "B", "text": "Time Failure"}, {"letter": "C", "text": "Validation Rule"}, {"letter": "D", "text": "Quick Action"}]'::jsonb, array['A', 'D']::text[]),
('213', 's4', '224', 'Universal Containers have changes that need to be deployed from Sandbox to
Production.
Where should an app builder look to verify that a Change Set can be deployed?', '[{"letter": "A", "text": "Deployment Settings"}, {"letter": "B", "text": "Unbound Change Sets"}, {"letter": "C", "text": "Deployment Status"}, {"letter": "D", "text": "Unbound Change Sets"}]'::jsonb, array['C']::text[]),
('214', 's4', '225', 'Sales representatives want to capture custom Feedback record details related to each
Account. The sales reps want to accomplish this with minimal clicks on mobile.
Which two solutions should be recommended in order to meet this requirement?
Choose 2 answers', '[{"letter": "A", "text": "Create a single-specific action in Account"}, {"letter": "B", "text": "Create a feedback Object as a parent of Account"}, {"letter": "C", "text": "Create a global action on Account"}, {"letter": "D", "text": "Create predefined values for most of the fields"}]'::jsonb, array['A', 'C']::text[]),
('215', 's4', '226', 'A manager built out a new Account report and wants to add a chart of the data to
account records. An app builder tried to use the Report Chart component but was unable to
find the manager''s report.
What are two reasons the app builder is unable to see the report?
Choose 2 answers', '[{"letter": "A", "text": "The report has no data in it."}, {"letter": "B", "text": "The app builder did not create the report."}, {"letter": "C", "text": "The report is in the manager''s Private reports folder"}, {"letter": "D", "text": "The report does not have a chart."}]'::jsonb, array['A', 'C']::text[]),
('216', 's4', '227', 'The Cloud Kicks (CK) sales team is currently using a sales app in Lightning Experience.
CK is planning a Salesforce mobile app rollout next month to increase productivity for reps
while out in the field. After reviewing the mobile app, the sales operations manager asks
about ways to create an enhanced user experience.
Which two solutions could an app builder suggest?
Choose 2 answers', '[{"letter": "A", "text": "Allow mobile users to support Account Upstream Agent Closets."}, {"letter": "B", "text": "Include Today as a guide from in line size."}, {"letter": "C", "text": "Set up different mobile menu configurations of different types of users."}, {"letter": "D", "text": "Create a custom app page and Assign to the mobile menu."}]'::jsonb, array['C', 'D']::text[]),
('217', 's4', '228', 'On the Account Lightning record page, users need to see ten fields and the ability to
sort and wrap text on their Related Lists.
Which Related List type should the app builder select for the Related List Lightning
component?', '[{"letter": "A", "text": "List View"}, {"letter": "B", "text": "List Class"}, {"letter": "C", "text": "Enhanced List"}, {"letter": "D", "text": "Basic List"}]'::jsonb, array['C']::text[]),
('218', 's4', '229', 'The app builder at AW Computing needs to capture information about sales rep help
requests for sales engineering. Some Opportunities are more complex and require many
different requests for help. Additionally, the date of the most recent request should be
displayed on the Opportunity page.
What should the app builder use to accomplish this?', '[{"letter": "A", "text": "Opportunity with Master-detail field to custom Object"}, {"letter": "B", "text": "Custom Object with Lookup field to Opportunity"}, {"letter": "C", "text": "Custom Object with Master-detail field to Opportunity"}, {"letter": "D", "text": "Opportunity with Lookup field to custom Object"}]'::jsonb, array['A']::text[]),
('219', 's4', '230', 'Which two solutions prevent a formula field from being referenced by a Roll-Up
Summary field?
Choose 2 answers', '[{"letter": "A", "text": "The NOW() function in the formula field"}, {"letter": "B", "text": "A cross-object formula updating a field referenced by the formula field"}, {"letter": "C", "text": "The CASE() function in the formula field"}, {"letter": "D", "text": "A cross-object field referenced in the formula field"}]'::jsonb, array['B', 'D']::text[]),
('220', 's4', '231', 'An app builder needs to modify an existing Process Builder that automates some of the
work being done by the sales team.
What are three capabilities of Process Builder that improve productivity?
Choose 3 answers', '[{"letter": "A", "text": "Create a Child record."}, {"letter": "B", "text": "Start an additional message."}, {"letter": "C", "text": "Update a related record."}, {"letter": "D", "text": "Send an email alerts."}, {"letter": "E", "text": "Delete a related record."}]'::jsonb, array['A', 'C', 'D']::text[]),
('221', 's4', '232', 'Ursa Major Solar has received complaints about inconsistent customer service
experiences and wants to provide its agents with a checklist of items that must be
accomplished when servicing a case.
What should an app builder use to implement this?', '[{"letter": "A", "text": "Business component"}, {"letter": "B", "text": "Actions & Recommendations component"}, {"letter": "C", "text": "Activity Timeline component"}, {"letter": "D", "text": "Highlights Panel component"}]'::jsonb, array['B']::text[]),
('222', 's4', '233', 'A service coordinator (SC) for Ursa Major Solar (UMS) does a final review of work orders
owned by a technician for a specific region before the records are submitted for an invoice.
Before closing out the work order, the SC needs to modify data or remove attachments that
were added by mistake. The SC also needs access to any other related records owned by the
technician.
Which solution provides the required access, given a private data model?', '[{"letter": "A", "text": "Close an assignment via that update record record by technicians in that region with the sc."}, {"letter": "B", "text": "Create a SC activity list with a corresponding audit group."}, {"letter": "C", "text": "Give the SC a permission set with the Modify AII Data system permission."}, {"letter": "D", "text": "Change work order access on the SC''s profile to Modify all''."}]'::jsonb, array['B']::text[]),
('223', 's4', '234', 'The CFO of Cloud kicks needs to sign off on any major shoe retail deal that has a
discount of more than 30% before the deal can be closed.
Which feature should be used to handle this requirement?', '[{"letter": "A", "text": "Slack message"}, {"letter": "B", "text": "Approval Process"}, {"letter": "C", "text": "Email Alart"}, {"letter": "D", "text": "Field Update"}]'::jsonb, array['B']::text[]),
('224', 's4', '235', 'An app builder has created a change set and deployed a report from their development
sandbox to a partial sandbox for User Acceptance Testing. When the app builder runs the
report, no data is returned.
What can be a reason for this?', '[{"letter": "A", "text": "Data is deployed when added to a change sets."}, {"letter": "B", "text": "Data is unable to be deployed with change sets."}, {"letter": "C", "text": "Reports have to be manually re-created in each environment."}, {"letter": "D", "text": "Reports have to be deployed with Salesforce OK."}]'::jsonb, array['B']::text[]),
('225', 's4', '236', 'An app builder wants to configure a sandbox environment for users to perform user
acceptance testing of the Iatest features from developers. The sandbox should include about
500MB worth of data configured via a template. Also, the sandbox should be refreshed
weekly.
Which sandbox meets the requirements?', '[{"letter": "A", "text": "Full sandbox"}, {"letter": "B", "text": "Developer File sandbox"}, {"letter": "C", "text": "Developer sandbox"}, {"letter": "D", "text": "Partial Copy sandbox"}]'::jsonb, array['C']::text[]),
('226', 's4', '237', 'After discovering a second sun in the solar system, Ursa Major Solar wants to change
the field relationship between ''Sun_c'' and ''Planet_c'' to a lookup rather than a master-
detail.
What should an app builder consider about the effect on reporting before making this
change?', '[{"letter": "A", "text": "Existing reports created under the ''Sun_c'' with ''Planet_c'' report type made by Salesforce will be unusable, but not deleted."}, {"letter": "B", "text": "Existing roll-up summary fields will be deleted from the Object and from any reports where they were added."}, {"letter": "C", "text": "Existing roll-up summary fields will remain on the ''Sun_c'' Object and available for reporting, but will no longer update."}, {"letter": "D", "text": "Existing reports created under the with report type made by Salesforce will be deleted."}]'::jsonb, array['A']::text[]),
('227', 's4', '238', 'At AW Computing, the Candidate Object has a checkbox field for Previous Experience
and a number field for Years of Previous Experience. The recruiting team wants the number
field to display only if the Previous Experience field is checked.
Which functionality should the app builder use to meet this requirement?', '[{"letter": "A", "text": "Create two different page layouts and a process to change the layout if Previous Experience is checked."}, {"letter": "B", "text": "Create a dependency between the Previous Experience and Years of Previous Experience fields."}, {"letter": "C", "text": "Use Dynamic Forms to display the Years of Previous Experience field if Previous Experience is checked."}, {"letter": "D", "text": "Use a Visualforce component on the candidate page layout to conditionally display the fields."}]'::jsonb, array['C']::text[]),
('228', 's4', '239', 'A sales manager at Cloud Kicks wants the team to spend more time in the field and Iess
time manually entering the information found on the business cards they collect.
What should an app builder do to help achieve this goal without sacrificing data quality?', '[{"letter": "A", "text": "Post daily to the Cluster feed any relevant fields that need to be populated."}, {"letter": "B", "text": "Use Flow to create a data entry related to automatic data entry."}, {"letter": "C", "text": "Research and evaluate data enrichment products on the Applications to automatic data entry."}, {"letter": "D", "text": "Use a formula field to populate key fields for the sales user."}]'::jsonb, array['C']::text[]),
('229', 's4', '240', 'The training team at Northern Trail Outfitters uses a custom Training Object to track
customer training sessions. An app builder needs to create a relationship between the
Training Object and the related Students'' record.
Which two behaviors should an app builder take into consideration?
Choose 2 answers', '[{"letter": "A", "text": "On Student record, users can set up Roll-up summary field on Training records."}, {"letter": "B", "text": "Cross-object field updates behavior Training and Student records are not supported."}, {"letter": "C", "text": "On Training record, the Student Lookup field can be made optional."}, {"letter": "D", "text": "On Training record, users can only delete Students, if they have access to it."}]'::jsonb, array['C', 'D']::text[]),
('230', 's4', '241', 'The Sales Operations team at AW Computing deletes accounts for a variety of reasons.
The sales ops director is worried that the Sales team may delete accounts that sales reps are
actively selling into.
How should the app builder keep accounts with open opportunities from being deleted?', '[{"letter": "A", "text": "Remove the Delete permission from the Sales Rep profile."}, {"letter": "B", "text": "Remove the delete button on the account layout."}, {"letter": "C", "text": "Create a validation rule on the Account object."}, {"letter": "D", "text": "Create an Apps Trigger on the Account object."}]'::jsonb, array['D']::text[]),
('231', 's4', '242', 'Northern Trail Outfitters (NTO) has created the custom objects Trail and Park in
Salesforce to track parks and trails respectively. NTO wants to track the total number of trails
a park has on the park record without writing any code.
Which two actions should an app builder take to accomplish this requirement?
Choose 2 answers', '[{"letter": "A", "text": "Use a master-detail relationship between the Park and Trail objects."}, {"letter": "B", "text": "Use a lookup relationship between the Park and Trail objects."}, {"letter": "C", "text": "Use a roll-up summary field on the Park record to show the total number of trails."}, {"letter": "D", "text": "Use a formula field on the Park record to show the total number of trails."}]'::jsonb, array['B', 'C']::text[]),
('232', 's4', '243', 'Cloud Kicks (CK) wants to set up a custom Child Object to track gift cards issued to a
customer. A key requirement is to track the total number of gift cards opened and gift cards
issued on an Account. CK wants to permanently ensure the gift cards are unable to be
moved across any other Account once it is created.
On the gift card object, which field type should be created to support this requirement?', '[{"letter": "A", "text": "Lookup relationship"}, {"letter": "B", "text": "Master-detials relationship"}, {"letter": "C", "text": "Roll-up summary"}, {"letter": "D", "text": "Formula"}]'::jsonb, array['B']::text[]),
('233', 's4', '244', 'An app builder wants to deploy a new version of an auto-launched flow to production
in an active state so that the new functionality is immediately available to users.
What should the app builder take into consideration when planning the deployment?', '[{"letter": "A", "text": "User access needs to be granted to the flow."}, {"letter": "B", "text": "Verify there is an Apps test that provides test coverage for the flow."}, {"letter": "C", "text": "Flow test coverage must by 100%."}, {"letter": "D", "text": "Honestly activate the flow after deployment."}]'::jsonb, array['B']::text[]),
('234', 's4', '245', 'Cloud Kicks built a process that is supposed to update record ownership based on
several different criteria. Some users report that
they are not getting the expected level of access to accounts and contacts.
Which two considerations should an app builder be aware of that could be causing the
issue?
Choose 2 answers
A Processes that update record owners do not transfer Child records.', '[{"letter": "B", "text": "Processes use the first value if the Owner field is updated multiple times."}, {"letter": "C", "text": "Processes will fall om records owned by inactive users."}, {"letter": "D", "text": "Processes will only run if the most current version Is active."}]'::jsonb, array['C']::text[]),
('235', 's4', '251', 'Northern Trail Outfitters wants to initiate a daily backup of its Salesforce org.
Which tool should an app builder recommend for this task?', '[{"letter": "A", "text": "Refresh full copy sandbox"}, {"letter": "B", "text": "Add/Change package"}, {"letter": "C", "text": "Data Expert Service"}, {"letter": "D", "text": "Support expert"}]'::jsonb, array['C']::text[]),
('236', 's4', '256', 'Ursa Major Solar has a lookup relationship between a custom ''Galaxy: Object and a
custom ''Star _ '' object. An app builder wants to create a roll-up summary field that counts
the total number of ''Star_s records related to each *Galaxy _ * record.
How would the current configuration impact the ability to achieve the desired result?', '[{"letter": "A", "text": "The roll-up summary can be achieved by creating a formula field on the ''Galaxy _ * object."}, {"letter": "B", "text": "The lookup relationship will need to be converted to a master-client relationship before a roll-up summary field can be created."}, {"letter": "C", "text": "The roll-up summary can be achieved by creating a formula field on the ''Star _ '' object."}, {"letter": "D", "text": "A roll-up summary field will need to be created on the ''Galaxy? Object with a field filter that reflects all related ''Star records."}]'::jsonb, array['B']::text[]),
('237', 's4', '258', 'The app builder at AW Computing has been asked to track the number of times a case has
been reopened.
Which solution should the app builder utilize to help with this request?', '[{"letter": "A", "text": "Screen Flow"}, {"letter": "B", "text": "Apex Trigger"}, {"letter": "C", "text": "Record-triggered flow"}, {"letter": "E", "text": "Scheduled Triggered flow"}]'::jsonb, array['C']::text[]),
('238', 's4', '259', 'DreamHouse Realty wants to import its property records from an external system into
Salesforce. The app builder will use an external ID field to house the property ID from the
external system.
Which two details should the app builder know when using external ID fields?', '[{"letter": "A", "text": "Each org can have up to 25 custom external ID fields."}, {"letter": "B", "text": "Each Object can have up to 25 custom external ID fields."}, {"letter": "C", "text": "An external ID field can be a URL field."}, {"letter": "E", "text": "An external ID field can be an auto-number field."}]'::jsonb, array['B', 'E']::text[]),
('239', 's4', '260:', 'Choose 3 options.
Cloud Kicks wants to set up a new opportunity approval process and execute various action
items based on the initial submission.
Which three action types should an app builder use in the approval process?', '[{"letter": "A", "text": "Invocable Flow"}, {"letter": "B", "text": "Decision Element"}, {"letter": "C", "text": "Email Alert"}, {"letter": "D", "text": "Task"}, {"letter": "F", "text": "Outbound Message"}]'::jsonb, array['C', 'D', 'F']::text[]),
('240', 's4', '260', 'Ursa Major Solar is ramping up the sales team to meet increased demand. As part of the short
ramp up for these new reps, the manager wants to provide a help guide to enable reps to
easily get help where needed during the different sales processes.
Which solution should an app builder recommend?', '[{"letter": "A", "text": "Path"}, {"letter": "B", "text": "Chatter Publisher"}, {"letter": "C", "text": "Journey Builder"}, {"letter": "D", "text": "Flow"}]'::jsonb, array['A']::text[]),
('241', 's5', '6', 'Ursa Major Solar (UMS) is planning to hire some new employees. UMS wants to allow a job candidate (Job_Candidate
for multiple open positions (Open _ and then be able to View the applications (Application_c) on the jot
record. IJMS also wants to View all the applications for a specific open position.
What should an app builder recommend to meet these requirements?', '[{"letter": "A", "text": "Create a master-detail relationship on open_position c to Application c."}, {"letter": "B", "text": "Create a master-detail relationship field on Job_Candidate c to Application C."}, {"letter": "C", "text": "Create a master-detail relationship field on Application cto Job candidate C."}, {"letter": "D", "text": "Create a master-detail relationship field on Application cto Open Position C."}]'::jsonb, array['C', 'D']::text[]),
('242', 's5', '9', 'An app builder is preparing to deploy a new app from the sandbox to production using change sets.
Which two considerations should an app builder keep in mind during this process?', '[{"letter": "A", "text": "Transactions will revert if the deployment errors."}, {"letter": "B", "text": "Users should be logged out of production when receiving inbound change sets."}, {"letter": "C", "text": "Change sets do not include all components and may have to perform some changes manually."}, {"letter": "D", "text": "Salesforce Connect automatically establishes a link between environments."}]'::jsonb, array['C']::text[]),
('243', 's5', '12', 'Universal Containers wants to create a custom checkbox formula field on the Opportunity Object. This formula
true if the following conditions are met:
• Stage issetto Negotiation/Review
• Close Date is less than I week away
Which formula meets these requirements?
O A AND(StageName ''Negotiation/Review'' , CloseDate - 7 < TODAY() )', '[{"letter": "B", "text": "AND(StageName = CloseDate - DA? (7) < TODAY() ) ''Negotiation/Review'' ) , CloseDate - DRY (7) < TODRY() )"}, {"letter": "D", "text": "(StageName, Negotiation/Review'' ) , CloseDate - 7 < TODAY() )"}]'::jsonb, array['D']::text[]),
('244', 's5', '15', 'Choose I option.
A business user at Universal Containers wants to update an Account directly from an Opportunity record.
What should the app builder create to allow the business user to make these edits?', '[{"letter": "A", "text": "Opportunity fields updated by a process."}, {"letter": "B", "text": "An update record action with a related record component."}, {"letter": "C", "text": "Formula fields displaying the Account fields."}, {"letter": "D", "text": "An update record action with a details component."}]'::jsonb, array['B']::text[]),
('245', 's5', '16', 'Choose I option.
Cloud Kicks has created a custom Object called Interests which is joined to Accounts by way of a junction Object calle
Interest.
What is the impact to users attempting to View an Account and the associated Account Interest records if they are wit
access to the Interest object?', '[{"letter": "A", "text": "Users will be unable to View Account records that have a related Account Interest record."}, {"letter": "B", "text": "Users will be unable to View the Account Interest records or the Interest records."}, {"letter": "C", "text": "Users will be able to View the Account Interest record, but unable to View the field or any information relating to the Interest record."}, {"letter": "D", "text": "Users will be able to View the Account Interest records and will have read•on access to the Interest records-"}]'::jsonb, array['B']::text[]),
('246', 's5', '17', 'Which three options are available when activating a Lightning page from the Lightning App Builder?', '[{"letter": "A", "text": "Make the page the org default."}, {"letter": "B", "text": "Assign the page to a combination of apps and permission sets."}, {"letter": "C", "text": "Make the page the default homepage for specific apps."}, {"letter": "D", "text": "Make the page the default homepage for specific roles."}, {"letter": "E", "text": "Assign the page to a combination of apps and profiles."}]'::jsonb, array['E']::text[]),
('247', 's5', '19', 'Choose I option.
Northern Trail Outfitters has two custom Objects that are part Of a master-detail relationship.
What determines the ownership and sharing access of the detail record?', '[{"letter": "A", "text": "The default owner is set in the parent object•s settings."}, {"letter": "B", "text": "The Owner field on the Master record."}, {"letter": "C", "text": "The Owner field on the Detail record."}, {"letter": "D", "text": "The owner is set independently on the detail object''s settings."}]'::jsonb, array['B']::text[]),
('248', 's5', '20', 'Choose I option.
Universal Containers has several new fields they''ve requested for the Opportunity Product Object.
What should an app builder be able to configure using a formula field?', '[{"letter": "A", "text": "A combination of the Opportunity''s Text and a Description fields."}, {"letter": "B", "text": "A mix of functions and concatenation of IO Account fields and IO Opportunity fields."}, {"letter": "C", "text": "A Rich Text area field that uses HTML to bold certain characters."}, {"letter": "D", "text": "A hyperlink to the parent Account of the parent Opportunity."}]'::jsonb, array['D']::text[]),
('249', 's5', '22', 'At Cloud Kicks when an opportunity close date is delayed by more than 60 days, the manager and the VP Of Sales want to review
the change.
Which two solutions will meet the requirement?', '[{"letter": "A", "text": "Build a validation rule that does not allow a user to save the opportunity record."}, {"letter": "B", "text": "Create a now that submits the record for an approval process."}, {"letter": "C", "text": "Build an approval process that requires unanimous approval from the manager and VP of Sales."}, {"letter": "D", "text": "Create a formula field that calculates if the close date is less than 60 days and then send an email alert-"}]'::jsonb, array['B']::text[]),
('250', 's5', '27', 'An app builder needs to change the data type of some custom fields.
Which two limitations should the app builder be aware of when changing the data type of a custom field?', '[{"letter": "A", "text": "lt is not possible to change the data type of field referenced by Apex code."}, {"letter": "B", "text": "lt is not possible to change the data type of a formula field to any data type."}, {"letter": "C", "text": "lt is not possible to change the data type of a field used as an External ID from number to text."}, {"letter": "D", "text": "lt is not possible to change the data type of a Text Area (Long) field to Text."}]'::jsonb, array['A', 'B']::text[]),
('251', 's5', '28', 'Choose I option.
Universal Containers uses a custom picklist field Account Region on the account record. They want this regio
related contact records and stay in sync if the value of this field changes on the Account.
How should an app builder meet this requirement?', '[{"letter": "A", "text": "Create a formula field on the Contact Object > Set the value of the formula to ISPICKVRL (Account .kccount_Region c) ."}, {"letter": "B", "text": "Create a text field called ''Account Region'' on Contact Object > Create a Lookup Relationship to upda the Account Region field on the Account is changed."}, {"letter": "C", "text": "Create a formula field on the Contact Object > Set the value of the formula to TEXT (Account. Account_Region c)"}, {"letter": "D", "text": "Create a picklist field called ''Account Region'' on Contact Object > Create a Lookup Relationship to u if the Account Region field on the Account is changed."}]'::jsonb, array['C']::text[]),
('252', 's5', '29', 'Choose I option.
The Recruiting team at AW Computing captures the job acceptance and date of hire of a candidate on the Job Applica
Object. Once the candidate accepts the recruiter''s job offer, the date of hire should be entered and not be changed on
record edits.
Which validation formula should the app builder use?', '[{"letter": "A", "text": "NOT c)) c)"}, {"letter": "B", "text": "Accepted c)) II ISCHANCED Date c)"}, {"letter": "C", "text": "NOT c) I I NOT (ISCH>XGED (Hire_Date c))"}]'::jsonb, array['A']::text[]),
('253', 's5', '32', 'An app builder at ursa Major Solar has been working on a new custom app in a sandbox that has been upgraded to the next m
Salesforce version, and their production instance is Still on the current Salesforce version. The development is complete and th
are ready to deploy a change set.
What should the app builder consider when planning the deployment?', '[{"letter": "A", "text": "The deployment is not possible due to different versions."}, {"letter": "B", "text": "lt will fail if there is a feature only available in the next version."}, {"letter": "C", "text": "The change set Will be automatically deployed when production is upgraded."}, {"letter": "D", "text": "The change set components will be upgraded to the next version in production."}]'::jsonb, array['B']::text[]),
('254', 's5', '34', 'Northern Trail Outfitters wantS the field sales team to only the accounts that they own. Separate North A
European marketing teams should only see accounts in their respective regions, The inside sales team needs t
in Salesforce.
How can this be accomplished?', '[{"letter": "A", "text": "Set the Organization-Wide Default to Public for accounts. Create profiles for each marketing team, and an Inside Sales Team role that is at the top of the Role Hierarchy."}, {"letter": "B", "text": "Set the Organization-Wide Default to Private for accounts. Create permission sets for each marketing t create an Inside Sales Team profile with the \"View All\" setting for accounts."}, {"letter": "C", "text": "Set the Organization-Wide Default to Public for accounts. Create criteria- based sharing rules for each r team, and create an Inside Sales Team permission set with the \"View All'' setting for accounts."}, {"letter": "D", "text": "Set the Organization-Wide Default to Private for accounts. Create criteria- based sharing rules for each marketing team, and create an Inside Sales Team profile with the \"View All'' setting for accounts."}]'::jsonb, array['D']::text[]),
('255', 's5', '36', 'Shipments at Cloud Kicks (CK) are created and updated by the warehouse staff in a shipping application. The
be pushed into Salesforce on a regular basis. CKs app builder creates a custom Object called Delivery_c to
information.
How can the app builder prevent creating duplicate delivery records and update the correct existing records
from the shipping application?', '[{"letter": "A", "text": "Use the Import Wizard and match on the Salesforce ID."}, {"letter": "B", "text": "Create a duplicate/match rule and use Dataloader."}, {"letter": "C", "text": "Create a unique External ID field and use Dataloader,"}, {"letter": "D", "text": "Use the Import Wizard and match on the tracking number."}]'::jsonb, array['C']::text[]),
('256', 's5', '38', 'An app builder needs to deploy a new account detail page layout from sandbox to production.
Which three components should an app builder include in the Change Set to ensure it deploys successfully an
expected?', '[{"letter": "A", "text": "System administrator profile"}, {"letter": "B", "text": "Custom actions"}, {"letter": "C", "text": "Custom fields"}, {"letter": "D", "text": "Detail page layout"}, {"letter": "E", "text": "Lightning App Builder"}]'::jsonb, array['E']::text[]),
('257', 's5', '40', 'Choose I option.
Universal Containers utilizes opportunities and a custom Object called Detailed_Sales c. The company would like to
metrics up to an opportunity for only Detailed_Sales c records that have their picklist status set to Active.
What is the recommended method for the app builder to achieve this request?', '[{"letter": "A", "text": "Utilize Apex code to roll up the desired amounts."}, {"letter": "B", "text": "Create a master-detail relationship between the parent and Child Object with a roll-up summary field that filter the status field."}, {"letter": "C", "text": "Create a lookup relationship between the parent and Child Object with a roll-up Summary field that filters on t Status field."}, {"letter": "D", "text": "Utilize the AppExchange to download a third-party application that can roll up the sales dollars with the appropriate filter."}]'::jsonb, array['B']::text[]),
('258', 's5', '43', 'DreamHouse Realty requires that field value changes for certain fields such as Asking_price c and
on their House c custom Object show up prominently on Chatter.
Which Chatter feature should the app builder use?', '[{"letter": "A", "text": "Topics"}, {"letter": "B", "text": "Feed Tracking"}, {"letter": "C", "text": "Publisher Actions"}, {"letter": "D", "text": "Pin Field"}]'::jsonb, array['B']::text[]),
('259', 's5', '44', 'The finance manager at Universal Containers wants to receive a new business notification email each time a new client is won, The
sales manager wants to receive a task letting them know to onboard the new client unless it is a top-tier client.
Which automation tool should an app builder use to best address all these requests?
O A Screen flow', '[{"letter": "B", "text": "Apex"}, {"letter": "C", "text": "Record-triggered flow"}, {"letter": "D", "text": "Approval process"}]'::jsonb, array['C']::text[]),
('260', 's5', '47', 'Choose I option.
Universal Containers wants to dynamically display a component on a Lightning record page for an account base
the related contact.
Which solution should an app builder use to fulfill this requirement?', '[{"letter": "A", "text": "Hide the component behind a tab on the page layout."}, {"letter": "B", "text": "Set the component visibility to display based on an advanced filter type, using the contact field(s) to def dynamic criteria."}, {"letter": "C", "text": "Set the filter type on the component visibility to display based on user permissions, using custom permi define the dynamic criteria."}, {"letter": "D", "text": "Add a related record component to the page layout."}]'::jsonb, array['B']::text[]),
('261', 's5', '54', 'DreamHouse Realty (DR) has many properties for sale and wants to identify the highest value of all Offer c records on each
Propexty c record.
Which solution should the app builder use to meet DRS needs provided that there is a master-detail relationship between the
objects?', '[{"letter": "A", "text": "Roll-up Summary"}, {"letter": "B", "text": "Rich Text Area"}, {"letter": "C", "text": "Text Area (Long)"}, {"letter": "D", "text": "Multi-select Picklist"}]'::jsonb, array['A']::text[]),
('262', 's5', '65', 'The appraisal team at DreamHouse Realty wants to leverage Salesforce mobile app.
What are three things an app builder should do to optimize mobile experience?', '[{"letter": "A", "text": "Create individual customized layouts for different phone operating systems."}, {"letter": "B", "text": "Avoid using default field values so that the user is required to fill in all fields on the screen."}, {"letter": "C", "text": "Put the most important fields in the compact layout so they are easy to find."}, {"letter": "D", "text": "lJse Global Actions to make it easy to perform vital functionality on mobile."}, {"letter": "E", "text": "Minimize the amount of formula fields and lookup fields to reduce page load time."}]'::jsonb, array['C', 'D', 'E']::text[])
on conflict (id) do update set
  source = excluded.source,
  original_number = excluded.original_number,
  prompt = excluded.prompt,
  options = excluded.options,
  correct_letters = excluded.correct_letters;

commit;
