# -*- coding: UTF-8 -*-
import openpyxl,os,re

'''检查文件夹名称'''
num_all = []
file = open(r'C:\Users\Admin\Desktop\num.txt', "r", encoding='UTF-8')
num = file.readlines()
for i in num:
    num_all.append(i[-13:-1])
file.close

for i in num_all:
   if not re.search('[0-9]{10}-|–[0-9]$',i):
       print (i+'   err')
       
 
'''检查文件夹名称'''

wb = openpyxl.load_workbook(r'C:\Users\Admin\Desktop\v_trans_sum_20200429.xlsx')
ws = wb.get_sheet_by_name('sheet1')
first_column = ws['A']
num_list = [] 
for x in range(len(first_column)):
    if first_column[x].value  is not None:
        num_list.append(first_column[x].value)


for i in num_all:
   if i not in num_list:
       print (i)


