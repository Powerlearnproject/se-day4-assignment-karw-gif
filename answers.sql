-- question 1.1
INSERT INTO patients (first_name, last_name, date_of_birth, gender, language)
VALUES ('John', 'Doe', '1980-11-15', 'Male', 'English');

--question 2.1
UPDATE patients
SET language = 'Spanish'
WHERE first_name = 'John' AND last_name = 'Doe';

--question 3.1
DELETE FROM patients
WHERE patient_id = 10;

--question 4.1
SELECT first_name, last_name, 
       IFNULL(email_address, 'N/A') AS email_address
FROM providers;


--question 4.2
SELECT first_name, last_name, 
       COALESCE(phone_number, 'Missing details') AS phone_number,
       COALESCE(email_address, 'Missing details') AS email_address
FROM providers;

--bonus question
SELECT first_name, last_name, 
       COALESCE(phone_number, 'Missing details') AS phone_number,
       COALESCE(email_address, 'Missing details') AS email_address
FROM providers
WHERE provider_speciality = 'Pediatrics'
  AND (phone_number IS NULL OR email_address IS NULL);




