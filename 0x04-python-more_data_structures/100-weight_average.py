70% of storage used … If you run out, you won't have enough storage to create, edit, and upload files. Get 100 GB of storage for Ksh 250.00 Ksh 60.00/month for 3 months.
#!/usr/bin/python3
def weight_average(my_list=[]):
    if not my_list:
        return 0

    num = 0
    den = 0

    for tup in my_list:
        num += tup[0] * tup[1]
        den += tup[1]

    return (num / den)
