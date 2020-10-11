// TODO: Create header for all types of platforms table in platform_model.dart and remove tableHeaders
const List<String> tableHeaders = ['Scale', 'DP', 'PT', 'PX'];

// In platform type both we don't require to calculate PT for ldpi, hdpi and xxxhdpi
const List<int> ignorePTCalculation = [0, 2, 5];
