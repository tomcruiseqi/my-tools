#include <stdio.h>

//int ninebox[9][9] = {
//        {0, 0, 0, 7, 3, 0, 2, 0, 0},
//        {0, 2, 0, 0, 5, 0, 0, 8, 0},
//        {7, 0, 0, 4, 0, 0, 0, 0, 0},
//        {0, 0, 0, 0, 0, 0, 6, 0, 5},
//        {6, 3, 0, 0, 0, 0, 0, 4, 7},
//        {1, 0, 8, 0, 0, 0, 0, 0, 0},
//        {0, 0, 0, 0, 0, 9, 0, 0, 3},
//        {0, 9, 0, 0, 2, 0, 0, 6, 0},
//        {0, 0, 5, 0, 7, 6, 0, 0, 0},
//};

int ninebox[9][9] = {
        {9, 0, 0, 0, 0, 2, 0, 0, 0},
        {1, 0, 0, 5, 0, 0, 0, 0, 4},
        {0, 0, 3, 0, 0, 0, 5, 7, 0},
        {0, 0, 0, 0, 0, 8, 6, 9, 0},
        {6, 0, 0, 0, 0, 0, 0, 0, 2},
        {0, 1, 4, 9, 0, 0, 0, 0, 0},
        {0, 5, 9, 0, 0, 0, 4, 0, 0},
        {2, 0, 0, 0, 0, 1, 0, 0, 6},
        {0, 0, 0, 3, 0, 0, 0, 0, 5},
};

void printf_n() {
    for (int i = 0; i < 9; i++) {
        for (int j = 0; j < 9; j++) {
            printf("%d", ninebox[i][j]);
            if (j < 8)
                printf(",");
        }
        printf("\n");
    }
}


int isuniq(const int i, const int j) {
    // 从1-9都查找下，如果有多个值匹配，直接返回不合格。
    int the_nice_value_num = 0, the_nice_value = 0;
    int v = 0;
    next_v:
    v++;
    if (v == 10)
        goto out;
    // 纵向的不能有重复的
    for (int t = 0; t < 9; t++) {
        if (ninebox[t][j] == v)
            goto next_v;
    }

    // 横向的不能有重复的
    for (int t = 0; t < 9; t++) {
        if (ninebox[i][t] == v)
            goto next_v;
    }

    // 当前宫格不能有重复的
    for (int x = 0; x < 3; x++) {
        for (int y = 0; y < 3; y++) {
            int xt = x + i / 3 * 3;
            int yt = y + j / 3 * 3;
            //printf("(%d,%d)的宫格： (%d, %d)\n", i, j, xt, yt);
            if (ninebox[xt][yt] == v)
                goto next_v;
        }
    }
    the_nice_value_num++;
    the_nice_value = v;
    goto next_v;

    out:
    if (the_nice_value_num > 1)
        return 0;
    return the_nice_value;
}

int get_uniq() {
    for (int i = 0; i < 9; i++) {
        for (int j = 0; j < 9; j++) {
            if (ninebox[i][j] != 0)
                continue;
            int v = isuniq(i, j);
            if (v) {
                ninebox[i][j] = v;
                //printf("(%d, %d) is %d\n", i, j, v);
            }
        }
    }
    return 0;
}


int isok(const int i, const int j, const int v) {
    if (0 != ninebox[i][j]) {
        if (v != ninebox[i][j])
            return 0;
        else
            return 1;
    }

    // 纵向的不能有重复的
    for (int t = 0; t < 9; t++) {
        if (ninebox[t][j] == v)
            return 0;
    }

    // 横向的不能有重复的
    for (int t = 0; t < 9; t++) {
        if (ninebox[i][t] == v)
            return 0;
    }

    // 当前宫格不能有重复的
    for (int x = 0; x < 3; x++) {
        for (int y = 0; y < 3; y++) {
            int xt = x + i / 3 * 3;
            int yt = y + j / 3 * 3;
            //printf("(%d,%d)的宫格： (%d, %d)\n", i, j, xt, yt);
            if (ninebox[xt][yt] == v)
                return 0;
        }
    }
    return 1;
}

struct index {
    int i;
    int j;
    int a;
    int b;
};

int search(const int box, const int num, const int flags[9][9], struct index *t) {
    for (int a = 0; a < 3; a++) {
        for (int b = 0; b < 3; b++) {
            int i = a + box / 3 * 3, j = box % 3 * 3 + b;
            if (ninebox[i][j] == num && flags[i][j]) {
                t->i = i;
                t->j = j;
                t->a = a;
                t->b = b;
                return 1;
            }
        }
    }
    return 0;
}

void travel() {
    // 九个数字，依次往九个格中放置，同时检测是否符合规矩。
    int flags[9][9] = {0};
    int the_num = 1;
    int the_box = 0;
    int a = 0, b = 0, i = 0, j = 0;

    num:
    while (the_num < 10) {
        // 先往第一个格子中放
        box:
        while (the_box < 9) { // 九个格子
            // 从格子的第一个小格开始找到第一个。
            while (a < 3) {
                while (b < 3) {
                    i = the_box / 3 * 3 + a, j = the_box % 3 * 3 + b;
                    // 如果当前位置是事先放置好了的，并且值是一样的，则当前格子对当前数字摆放ok，到下一个格子。
                    if (flags[i][j] == 0) {
                        if (ninebox[i][j] == the_num)
                            goto next_box;
                    }
                    if (isok(i, j, the_num)) {
                        ninebox[i][j] = the_num;
                        // 标记是我们找到的
                        flags[i][j] = 1;
                        // 当前格子找到了合适的，直接到下一个格子。
                        goto next_box;
                    }
                    b++;
                }
                a++;
                b = 0;
            }

            // 当前格子没有找到合适的，回退到前一个格子，从那个格子的下一个位置开始找
            pre_box:
            the_box--;

            // 当前数字放置的格子已回退完毕，说明上一个数字放置有问题，回退上一个数字。
            if (the_box < 0) {
                the_num--;
                the_box = 8;// 从上一个数字的最后一个格子开始回退。

                struct index the_pre_index;
                // 查找上一个数字在最后一个格子中的位置，并输出它在格子中的偏移。
                if (!search(the_box, the_num, flags, &the_pre_index)) {
                    //没有找到，继续回退格子
                    goto pre_box;
                }
                a = the_pre_index.a;
                b = the_pre_index.b;

                // 清除标记和值，因为这个数字的摆放位置是错误的。
                ninebox[the_pre_index.i][the_pre_index.j] = 0;
                flags[the_pre_index.i][the_pre_index.j] = 0;

                // 当前数字在当前格子已经是最后一个位置，说明前面那个格子中的这个数字放置有问题，回退到上一个格子。
                if (2 == a && 2 == b) {
                    goto pre_box;
                }

                // 从下一个位置开始找
                if (2 == b) {
                    a++;
                    b = 0;
                } else {
                    b++;
                }
                goto num;
            }

            // 回退当前数字的摆放位置。
            struct index the_pre_index;
            if (!search(the_box, the_num, flags, &the_pre_index)) {
                // 由于上一个格子中的当前是提前预定好了的，直接回退格子。
                goto pre_box;
            }
            a = the_pre_index.a;
            b = the_pre_index.b;
            ninebox[the_pre_index.i][the_pre_index.j] = 0;
            flags[the_pre_index.i][the_pre_index.j] = 0;

            // 当前格子找完了，回退到上一个格子
            if (2 == a && 2 == b) {
                goto pre_box;
            }

            // 从下一个位置开始找
            if (2 == b) {
                a++;
                b = 0;
            } else {
                b++;
            }
            goto box;

            next_box:
            //printf("数字：%d 在 第%d个格子摆放完毕\t位置为(%d,%d)\n", the_num, the_box + 1, i, j);
            the_box++;
            a = 0;
            b = 0;
        }
        // 当前数字已放置完毕，放置下一个数字。
        the_num++;
        the_box = 0;
        a = 0;
        b = 0;
    }
}

int verify(const int i, const int j) {
    const int v = ninebox[i][j];
    // 纵向的不能有重复的
    for (int t = 0; t < 9; t++) {
        if (ninebox[t][j] == v && i != t)
            return 0;
    }

    // 横向的不能有重复的
    for (int t = 0; t < 9; t++) {
        if (ninebox[i][t] == v && j != t)
            return 0;
    }

    // 当前宫格不能有重复的
    for (int x = 0; x < 3; x++) {
        for (int y = 0; y < 3; y++) {
            int xt = x + i / 3 * 3;
            int yt = y + j / 3 * 3;
            //printf("(%d,%d)的宫格： (%d, %d)\n", i, j, xt, yt);
            if (ninebox[xt][yt] == v && i != xt && j != yt)
                return 0;
        }
    }
    return 1;
}

int iscorrect() {
    for (int i = 0; i < 9; i++) {
        for (int j = 0; j < 9; j++) {
            if (!verify(i, j))
                return 0;
        }
    }
    return 1;
}

int main(int argn, char **args) {
    // 从第一个先跑一遍，根据现有的找到唯一的。
    get_uniq();

    // 然后从头开始使用递归法跑一遍。
    travel();
    printf("\n\n\n");
    printf_n();

    // 检查是否是对的九宫格。
    if(iscorrect())
        printf("上面这个九宫格是正确的\n");
    else
        printf("上面这个九宫格是错误的\n");
    return 0;
}