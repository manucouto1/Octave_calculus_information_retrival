function result = MTP_ALFA(mtp, alfa)
 result = (1 - alfa) * mtp .+ (alfa)/(size(mtp)(1)) * ones(size(mtp));
 end