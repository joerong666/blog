title: "C语言与面向对象之封装(一)"
tags: 
- c
categories: C语言
---

### 概述
封装、继承、多态是面向对象编程的三大基本特征。本系列讲在C语言中如何实现这些特征。

<!-- more -->
## 封装


``` c obj.h
typedef struct obj_s obj_t;

obj_t *obj_create();
void obj_destroy(obj_t *obj);

void obj_do_thing(obj_t *obj, void *arg);
```

``` c obj.c
#include <stdlib.h>
#include "obj.h"

struct obj_s {
    int a;
};

obj_t *create_obj()
{
    obj_t *thiz = malloc(sizeof(*thiz));
    return thiz;
}

void destroy_obj(obj_t *obj)
{
    free(thiz);
}

void do_thing(obj_t *thiz, void *arg)
{
    thiz->a = 1;
}
```

``` c test.c
#include <stdio.h>
#include "obj.h"

int main(int argc, char *argv[])
{
    obj_t *obj = obj_create();
    obj_do_thing(obj, NULL);

    printf("a=%d\n", thiz->a);

    obj_destroy(obj);
}
```

    $ gcc -o test *.c && ./test
