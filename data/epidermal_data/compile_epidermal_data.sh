mkdir epidermal_data;cd epidermal_data

mkdir code;mkdir compiled
git clone https://github.com/uomsystemsbiology/epidermal_data.git code
wget --progress=dot:mega -q -O released_data.zip "https://cloudstor.aarnet.edu.au/plus/index.php/s/T8ILpbE3h1Ut8Yn/download"
unzip -q released_data.zip -d code

mcc -v -m -a code/code/functions -I code/code -d compiled recreate_pMEK_heterogeneity_fig.m
cp compiled/recreate_pMEK_heterogeneity_fig code/recreate_pMEK_heterogeneity_fig

mcc -v -m -a code/code/functions -I code/code -d compiled sample_to_loessDiscCentroids.m
cp compiled/sample_to_loessDiscCentroids code/sample_to_loessDiscCentroids

mcc -v -m -a code/code/functions -I code/code -d compiled sampLoc_mat_to_tiff.m
cp compiled/sampLoc_mat_to_tiff code/sampLoc_mat_to_tiff

mcc -v -m -a code/code/functions -I code/code -d compiled extract_BMC_SysBio_Data.m
cp compiled/sampLoc_mat_to_tiff code/extract_BMC_SysBio_Data

mcc -v -m -a code/code/functions -I code/code -d compiled create_IF_data_summary.m
cp compiled/sampLoc_mat_to_tiff code/create_IF_data_summary

cp compiled/*.sh code/