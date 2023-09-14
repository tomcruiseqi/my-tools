#!/usr/bin/python3

import re

cfg_anolis8 = "config-4.19.91-27.an8.x86_64"
cfg_my = "config-kos-debug-netfilter"
cfg_syzkaller_std = "config-syzkaller-standard"
cfg_lastest = "config-syzkaller-debug-plus-netfilter"

with open(cfg_anolis8, "r", encoding="utf-8") as f:
    kos_config_dic = f.readlines()

with open(cfg_my, "r", encoding="utf-8") as f:
    my_new_config_dic = f.readlines()

with open(cfg_syzkaller_std, "r", encoding="utf-8") as f:
    syzkaller_config_dic = f.readlines()

kos_config_set = set()
for config in kos_config_dic:
    config = config.strip()
    if re.search(r"^CONFIG", config):
        kos_config_set.add(config)
print(len(kos_config_set))

new_syzkaller_set = set()
for c in my_new_config_dic:
    c = c.strip()
    if re.search(r"^CONFIG", c) and c not in kos_config_set:
        new_syzkaller_set.add(c)
print(len(new_syzkaller_set))

for c in syzkaller_config_dic:
    c = c.strip()
    if re.search(r"^CONFIG", c) and c not in new_syzkaller_set:
        new_syzkaller_set.add(c)
print(len(new_syzkaller_set))

with open(cfg_lastest, "w", encoding="utf-8") as f:
    for c in new_syzkaller_set:
        print(c, file=f)
