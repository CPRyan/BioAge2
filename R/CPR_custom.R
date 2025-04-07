# Load tidyverse
library(tidyverse)

# Load Data needed for NHANES 3
load(here::here("data/NHANES3.rda"))
load(here::here("data/NHANES4.rda"))



NHANES3 <-NHANES3 %>%
  mutate(log_albumin = log(albumin),
         log_alkaline_phosphatase = log(alp),
         log1p_basophil = log1p(basopa),
         log1p_bilirubin = log1p(ttbl),
         log_bun = log(bun),
         log_crp = log(10*crp), # Unit correction: mg/dL in NHANES, mg/L in STS
         log_creatinine = log(creat),
         log1p_eosinophil = log1p(eosnpa),
         log_ggt = log(ggt),
         log_glucose = log(glucose),
         log_hdl = log(hdl),
         log_insulin = log(insulin),
         log1p_ldl = log(ldl),
         log1p_monocyte = log1p(monopa),
         log_rdw = log(rdw),
         log_total_chol = log(totchol),
         log_trig = log(trig),
         log_uric_acid = log(uap),
         log1p_vit_a = log1p(vitaminA),
         log_vit_b12 = log(vitaminB12),
         log_vit_c = log(vitaminC),
         log_vit_e = log(vitaminE),
         log_wbc = log(wbc)
         )


NHANES4 <-NHANES4 %>%
  mutate(log_albumin = log(albumin),
         log_alkaline_phosphatase = log(alp),
         log1p_basophil = log1p(basopa),
         log1p_bilirubin = log1p(ttbl),
         log_bun = log(bun),
         log_crp = log(10*crp), # Unit correction: mg/dL in NHANES, mg/L in STS
         log_creatinine = log(creat),
         log1p_eosinophil = log1p(eosnpa),
         log_ggt = log(ggt),
         log_glucose = log(glucose),
         log_hdl = log(hdl),
         log_insulin = log(insulin),
         log1p_ldl = log(ldl),
         log1p_monocyte = log1p(monopa),
         log_rdw = log(rdw),
         log_total_chol = log(totchol),
         log_trig = log(trig),
         log_uric_acid = log(uap),
         log1p_vit_a = log1p(vitaminA),
         log_vit_b12 = log(vitaminB12),
         log_vit_c = log(vitaminC),
         log_vit_e = log(vitaminE),
         log_wbc = log(wbc)
  )


save(NHANES3, file = here::here("data/NHANES3.rda"))
save(NHANES4, file = here::here("data/NHANES4.rda"))
