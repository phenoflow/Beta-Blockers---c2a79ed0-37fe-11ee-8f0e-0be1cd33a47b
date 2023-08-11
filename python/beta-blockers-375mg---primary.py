# Evangelos Kontopantelis, David A Springate, David Reeves, Darren M. Aschroff, Martin Rutter, Iain Buchan, Tim Doran, Matthias Pierce, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"11338","system":"gprdproduct"},{"code":"12517","system":"gprdproduct"},{"code":"14057","system":"gprdproduct"},{"code":"17615","system":"gprdproduct"},{"code":"18185","system":"gprdproduct"},{"code":"19200","system":"gprdproduct"},{"code":"19853","system":"gprdproduct"},{"code":"23131","system":"gprdproduct"},{"code":"23134","system":"gprdproduct"},{"code":"24083","system":"gprdproduct"},{"code":"25462","system":"gprdproduct"},{"code":"27946","system":"gprdproduct"},{"code":"32114","system":"gprdproduct"},{"code":"34963","system":"gprdproduct"},{"code":"35695","system":"gprdproduct"},{"code":"38991","system":"gprdproduct"},{"code":"43564","system":"gprdproduct"},{"code":"47107","system":"gprdproduct"},{"code":"472","system":"gprdproduct"},{"code":"4771","system":"gprdproduct"},{"code":"5284","system":"gprdproduct"},{"code":"5713","system":"gprdproduct"},{"code":"7091","system":"gprdproduct"},{"code":"751","system":"gprdproduct"},{"code":"7528","system":"gprdproduct"},{"code":"7553","system":"gprdproduct"},{"code":"8987","system":"gprdproduct"},{"code":"9143","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('beta-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["beta-blockers-375mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["beta-blockers-375mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["beta-blockers-375mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
