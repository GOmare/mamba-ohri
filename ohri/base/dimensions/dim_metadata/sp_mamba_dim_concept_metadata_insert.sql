USE analysis;

-- $BEGIN

SET @report_data = '
{
   "flat_report_metadata":[
      {
         "report_name":"HTS Report",
         "flat_table_name":"encounter_hts",
         "encounter_type_uuid":"253a43d3-c99e-415c-8b78-ee7d4d3c1d54",
         "table_columns":{
            "test_setting":"13abe5c9-6de2-4970-b348-36d352ee8eeb",
            "community_service_point":"74a3b695-30f7-403b-8f63-3f766461e104",
            "facility_service_point":"80bcc9c1-e328-47e8-affe-6d1bffe4adf1",
            "hts_approach":"9641ead9-8821-4898-b633-a8e96c0933cf",
            "pop_type":"166432AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "key_pop_type":"d3d4ae96-8c8a-43db-a9dc-dac951f5dcb3",
            "key_pop_migrant_worker":"63ea75cb-205f-4e7b-9ede-5f9b8a4dda9f",
            "key_pop_uniformed_forces":"b282bb08-62a7-42c2-9bea-8751c267d13e",
            "key_pop_transgender":"22b202fc-67de-4af9-8c88-46e22559d4b2",
            "key_pop_AGYW":"678f3144-302f-493e-ba22-7ec60a84732a",
            "key_pop_fisher_folk":"def00c73-f6d5-42fb-bcec-0b192b5be22d",
            "key_pop_prisoners":"8da9bf92-22f6-40be-b468-1ad08de7d457",
            "key_pop_refugees":"dc1058ea-4edd-4780-aeaa-a474f7f3a437",
            "key_pop_msm":"160578AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "key_pop_fsw":"160579AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "key_pop_truck_driver":"162198AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "key_pop_pwd":"365371fd-0106-4a53-abc4-575e3d65d372",
            "key_pop_pwid":"c038bff0-8e33-408c-b51f-7fb6448d2f6c",
            "sexually_active":"160109AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "unprotected_sex_last_12mo":"159218AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "sti_last_6mo":"156660AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "ever_tested_hiv":"1492AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "duration_since_last_test":"e7947a45-acff-49e1-ba1c-33e43a710e0d",
            "last_test_result":"159427AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "reason_for_test":"ce3816e7-082d-496b-890b-a2b169922c22",
            "pretest_counselling":"de32152d-93b0-412a-908a-20af0c46f215",
            "type_pretest_counselling":"0473ec07-2f34-4447-9c58-e35a1c491b6f",
            "consent_provided":"1710AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "test_conducted":"164401AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "date_test_conducted":"164400AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "initial_kit_name":"afa64df8-50af-4bc3-8135-6e6603f62068",
            "initial_test_result":"e767ba5d-7560-43ba-a746-2b0ff0a2a513",
            "confirmatory_kit_name":"b78d89e7-08aa-484f-befb-1e3e70cd6985",
            "tiebreaker_kit_name":"73434a78-e4fc-42f7-a812-f30f3b3cabe3",
            "tiebreaker_test_result":"bfc5fbb9-2b23-422e-a741-329bb2597032",
            "final_test_result":"e16b0068-b6a2-46b7-aba9-e3be00a7b4ab",
            "syphilis_test_result":"165303AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "given_result":"164848AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "date_given_result":"160082AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "result_received_couple":"445846e9-b929-4519-bc83-d51c051918f5",
            "couple_result":"5f38bc97-d6ca-43f8-a019-b9a9647d0c6a",
            "recency_consent":"976ca997-fb2b-4bef-a299-f7c9e16b50a8",
            "recency_test_done":"4fe5857e-c804-41cf-b3c9-0acc1f516ab7",
            "recency_test_type":"05112308-79ba-4e00-802e-a7576733b98e",
            "recency_rtri_result":"165092AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "recency_vl_result":"856AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
         }
      },
      {
         "report_name":"COVID Report",
         "flat_table_name":"encounter_covid",
         "encounter_type_uuid":"79c1f50f-f77d-42e2-ad2a-d29304dde2fe",
         "table_columns":{
            "date_assessment":"160753AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "assessment_contact_case":"5340f478-ec5d-41e6-bc62-961c52014d4d",
            "assessment_entry_country":"677f4d21-7293-4810-abe6-57a192acde57",
            "assessment_follow_up":"ad8be6bf-ced7-4390-a6af-c5acebeac216",
            "assessment_health_worker":"30320fb8-b29b-443f-98cf-f3ef491f8947",
            "assessment_frontline_worker":"38769c82-a3d3-4714-97b7-015726cdb209",
            "assessment_post_mortem":"1cee0ab3-bf06-49e9-a49c-baf261620c67",
            "assessment_quarantine":"e0f1584a-cc8b-48e9-980f-64d9f724caf8",
            "assessment_rdt_confirmatory":"0ed2e3ca-b9a6-4ff6-ac74-4d4cd9520acc",
            "assessment_surveillance":"8a6ab892-1b1d-4ad9-82da-c6c38ee8fcfb",
            "assessment_symptomatic":"1068AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "assessment_travel_out_country":"f8c9c2cc-3070-444e-8818-26fb8100bb78",
            "assessment_voluntary":"f974e267-feeb-42be-9d37-61554dad16b1",
            "assessment_other":"a782ce41-5499-4521-ae42-16347fe6b9e0",
            "assessment_presentation":"de3bc9b7-05b5-41b6-a38d-8d2eec646c4f",
            "date_onset_symptoms":"1730AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_abdominal_pain":"151AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_chest_pain":"120749AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_cough":"feb2a008-403c-480e-9d0e-f7100b370815",
            "symptom_diarrhoea":"6e7d9cd7-8a0b-40ca-bf57-c4fc7510b09a",
            "symptom_disturbance_consciousness":"118876AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_general_weakness":"5226AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_headache":"139084AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_fever_chills":"140237AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_irritability_confusion":"120345AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_joint_pain":"116558AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_loss_smell":"135589AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_loss_taste":"135589AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_muscular_pain":"133632AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_nausea_vomiting":"5978AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_red_eyes":"127777AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_runny_nose":"94a6ae53-0c36-4889-b2b7-025e48542835",
            "symptom_shortness_breath":"141600AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_sneezing":"126319AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_sore_throat":"158843AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_tiredness":"124628AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "symptom_other":"08287bbb-3b2d-41fc-83e6-9c827e79b8e0",
            "comorbidity_present":"166020AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "comorbidity_cardiovascular":"9a40049b-4875-4a1f-8969-d9231b807ec7",
            "comorbidity_chronic_lung":"145270AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "comorbidity_chronic_neurological":"165646AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "comorbidity_current_smoker":"155600AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "comorbidity_diabetes":"e3ea3c4b-df5f-4659-b357-93e3de325660",
            "comorbidity_former_smoker":"156358AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "comorbidity_hiv_aids":"746d0622-21d3-4c57-8ee9-4e2a69637d8c",
            "comorbidity_hypertension":"117399AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "comorbidity_immunodeficiency":"156753AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "comorbidity_liver":"139201AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "comorbidity_malignancy":"c4879004-17d7-4eee-b5fc-942e855e2027",
            "comorbidity_renal":"9c37b227-6426-4866-9fb9-a19800572924",
            "comorbidity_tb":"1a0ce98b-3fc0-4a07-b813-9dad49d8347e",
            "comorbidity_other":"166104AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "covid_test":"069f6dfe-88c1-4a45-a894-0d99549c8718",
            "order_date":"162078AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "rapid_antigen_test":"165852AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "diagnostic_pcr_test":"165840AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "result_date":"163724AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "rapid_antigen_result":"cbcbb029-f11f-4437-9d53-1d0f0a170433",
            "diagnostic_pcr_result":"3f4ee14b-b4ab-4597-9fe9-406883b63d76",
            "patient_outcome":"a845f3e6-4432-4de4-9fff-37fa270b1a06",
            "date_recovered":"162868AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "date_died":"1543AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
            "long_covid_description":"4560c560-4bd6-4989-bff8-6e4e1fa39972"
         }
      }
   ]
}
';
CALL sp_extract_report_metadata(@report_data, '');

-- $END