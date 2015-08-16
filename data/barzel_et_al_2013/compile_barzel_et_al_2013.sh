mkdir barzel_et_al_2013;cd barzel_et_al_2013

mkdir code;mkdir compiled
git clone https://github.com/baruchbarzel/NatureBiotech-31-720.git code

mkdir compiled/SupplementarySoftware2
mcc -v -m -I code/SupplementarySoftware2/ -d compiled/SupplementarySoftware2 RUN

mkdir compiled/SupplementarySoftware3
mcc -v -m -I code/SupplementarySoftware3/ -d compiled/SupplementarySoftware3 RUN

