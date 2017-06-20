.class public Lcom/xingluo/platform/tsz/afinal/d/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/d/a;->c(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xingluo/platform/tsz/afinal/d/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/xingluo/platform/tsz/afinal/a/a/e;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/a/a/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_9

    array-length v6, v5

    move v4, v2

    move-object v0, v1

    :goto_0
    if-lt v4, v6, :cond_3

    move-object v3, v1

    :cond_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/xingluo/platform/tsz/afinal/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    aget-object v3, v5, v4

    const-class v0, Lcom/xingluo/platform/tsz/afinal/a/a/a;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/a/a/a;

    if-nez v0, :cond_0

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_4
    array-length v3, v5

    move v0, v2

    :goto_2
    if-lt v0, v3, :cond_5

    array-length v3, v5

    move v0, v2

    :goto_3
    if-lt v0, v3, :cond_7

    move-object v0, v1

    goto :goto_1

    :cond_5
    aget-object v4, v5, v0

    const-string v6, "_id"

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "_id"

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    aget-object v2, v5, v0

    const-string v4, "id"

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "id"

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this model["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has no field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v5, v4

    move v3, v0

    :goto_0
    if-lt v3, v5, :cond_4

    move-object v2, v1

    :cond_0
    if-nez v2, :cond_1

    array-length v5, v4

    move v3, v0

    :goto_1
    if-lt v3, v5, :cond_5

    :cond_1
    move-object v1, v2

    :cond_2
    if-nez v1, :cond_8

    array-length v3, v4

    move v2, v0

    :goto_2
    if-lt v2, v3, :cond_6

    move-object v0, v1

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    aget-object v2, v4, v3

    const-class v6, Lcom/xingluo/platform/tsz/afinal/a/a/a;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_5
    aget-object v1, v4, v3

    const-string v6, "_id"

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_6
    aget-object v0, v4, v2

    const-string v5, "id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this model["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has no field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public static d(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/d/a;->c(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/tsz/afinal/c/b/e;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/d/a;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    return-object v1

    :cond_0
    aget-object v5, v2, v0

    invoke-static {v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->c(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->g(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/xingluo/platform/tsz/afinal/c/b/e;

    invoke-direct {v6}, Lcom/xingluo/platform/tsz/afinal/c/b/e;-><init>()V

    invoke-static {v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->b(Ljava/lang/Class;)V

    invoke-static {v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->b(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->c(Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->c(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->b(Ljava/lang/reflect/Method;)V

    invoke-static {p0, v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->a(Ljava/lang/reflect/Method;)V

    invoke-virtual {v6, v5}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->a(Ljava/lang/reflect/Field;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static f(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/tsz/afinal/c/b/c;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-object v2

    :cond_0
    aget-object v5, v3, v1

    invoke-static {v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->c(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->d(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v6, Lcom/xingluo/platform/tsz/afinal/c/b/c;

    invoke-direct {v6}, Lcom/xingluo/platform/tsz/afinal/c/b/c;-><init>()V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v7, Lcom/xingluo/platform/tsz/afinal/c/a/c;

    if-ne v0, v7, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v7, 0x1

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Class;)V

    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->b(Ljava/lang/Class;)V

    invoke-static {p0, v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->c(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->b(Ljava/lang/reflect/Method;)V

    invoke-static {p0, v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/reflect/Method;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static g(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/tsz/afinal/c/b/d;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-object v2

    :cond_0
    aget-object v5, v3, v1

    invoke-static {v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->c(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->e(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v6, Lcom/xingluo/platform/tsz/afinal/c/b/d;

    invoke-direct {v6}, Lcom/xingluo/platform/tsz/afinal/c/b/d;-><init>()V

    invoke-static {v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v8, :cond_3

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->a(Ljava/lang/Class;)V

    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->b(Ljava/lang/Class;)V

    invoke-static {p0, v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->c(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->b(Ljava/lang/reflect/Method;)V

    invoke-static {p0, v5}, Lcom/xingluo/platform/tsz/afinal/d/b;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->a(Ljava/lang/reflect/Method;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v7, 0x1

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v6, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_1
    new-instance v0, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOneToManyList Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s type is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
