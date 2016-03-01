title: "C语言与面向对象之继承(一)"
tags: 
- c
categories: C语言
---

### 概述
实现继承的第一种方法。

<!-- more -->


``` c
struct super_s {
    int a;
};

struct child_s {
    struct super_s super;   /* must be the first field */
    int b;
};
```

