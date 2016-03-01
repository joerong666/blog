title: "C语言与面向对象之封装(二)"
tags: 
- c
categories: C语言
---

### 概述
实现封装的第二种方法。

<!-- more -->
``` c obj.h
typedef struct obj_s obj_t;

struct obj_s {
    int a;

    struct obj_pri *pri;

    void (*do_thing)(obj_t *thiz, void *arg);
    void (*destroy)(obj_t *thiz);
};

obj_t *obj_create();
```

``` c obj.c
#include <stdlib.h>
#include <stdio.h>
#include "obj.h"

#define SELF (thiz->pri)
#define ADD_METHOD(_m) (thiz->_m = _m)

static void do_thing(obj_t *thiz, void *arg);
static void destroy(obj_t *thiz);

struct obj_pri {
    int b;
};

obj_t *obj_create()
{
    obj_t *thiz = malloc(sizeof(*thiz) + sizeof(*SELF));
    SELF = (typeof(SELF))((char *)thiz + sizeof(*thiz));

    ADD_METHOD(do_thing);
    ADD_METHOD(destroy);

    return thiz;
}

static void destroy(obj_t *thiz)
{
    free(thiz);
}

static void do_thing(obj_t *thiz, void *arg)
{
    thiz->a = 1;
    SELF->b = 2;
    
    printf("a=%d, b=%d\n", thiz->a, SELF->b);
}
```

``` c test.c
#include <stdio.h>
#include "obj.h"

int main(int argc, char *argv[])
{
    obj_t *obj = obj_create();
    obj->do_thing(obj, NULL);
    obj->destroy(obj);
}
```

    $ gcc -o test *.c && ./test

