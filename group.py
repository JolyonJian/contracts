import os
import shutil

fr = open('.\\group_contract_list', 'r', encoding='utf8')
groups = fr.readlines()
count = 1
for group in groups:
    path = '.\\groups\\group%d' % count
    if not os.path.exists(path):
        os.mkdir(path)
        strs = group.replace('\n', '').split(' ')
        file_name = strs[0].split('/')[-1]
        shutil.copyfile('.\\contracts\\' + file_name, path + '\\' + file_name)
        if len(strs) > 1:
            for str in strs[1:]:
                parser = str.split('/')[-1].split(':')
                file_name = parser[0]
                shutil.copyfile('.\\contracts\\' + file_name, path + '\\' + parser[1] + '_' + file_name)
    else:
        print(path + ' is existed!')
    count += 1
