# Evangelos Kontopantelis, David A Springate, David Reeves, Darren M. Aschroff, Martin Rutter, Iain Buchan, Tim Doran, Matthias Pierce, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"1288","system":"gprdproduct"},{"code":"14058","system":"gprdproduct"},{"code":"2629","system":"gprdproduct"},{"code":"29427","system":"gprdproduct"},{"code":"31708","system":"gprdproduct"},{"code":"32094","system":"gprdproduct"},{"code":"33374","system":"gprdproduct"},{"code":"34034","system":"gprdproduct"},{"code":"34449","system":"gprdproduct"},{"code":"34501","system":"gprdproduct"},{"code":"34741","system":"gprdproduct"},{"code":"34825","system":"gprdproduct"},{"code":"43251","system":"gprdproduct"},{"code":"46935","system":"gprdproduct"},{"code":"46936","system":"gprdproduct"},{"code":"47536","system":"gprdproduct"},{"code":"599","system":"gprdproduct"},{"code":"7066","system":"gprdproduct"},{"code":"8061","system":"gprdproduct"},{"code":"817","system":"gprdproduct"},{"code":"9783","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('beta-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["beta-blockers-3125mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["beta-blockers-3125mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["beta-blockers-3125mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
