.class public Lcom/xingluo/platform/tsz/afinal/c/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/xingluo/platform/tsz/afinal/c/a/b;
    .locals 5

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c/a/b;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/b;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/xingluo/platform/tsz/afinal/c/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/Class;Lcom/xingluo/platform/tsz/afinal/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/xingluo/platform/tsz/afinal/c;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_5

    :try_start_0
    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_2

    iget-object v0, v3, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v3, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_3
    return-object v0

    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v3, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/e;

    if-eqz v0, :cond_4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/d;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->e()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/xingluo/platform/tsz/afinal/c/a/d;

    if-ne v4, v5, :cond_0

    new-instance v4, Lcom/xingluo/platform/tsz/afinal/c/a/d;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v1, p1, v5, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/d;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/xingluo/platform/tsz/afinal/c;)V

    invoke-virtual {v0, v1, v4}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->e()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/xingluo/platform/tsz/afinal/c/a/c;

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/xingluo/platform/tsz/afinal/c/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v1, p1, v4, p2}, Lcom/xingluo/platform/tsz/afinal/c/a/c;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/xingluo/platform/tsz/afinal/c;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xingluo/platform/tsz/afinal/c/a/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public static a(Lcom/xingluo/platform/tsz/afinal/c/a/b;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xingluo/platform/tsz/afinal/c/a/b;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/c/a/b;->a()Ljava/util/HashMap;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v6

    iget-object v2, v6, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xingluo/platform/tsz/afinal/c/b/e;

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v0, v4

    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v4

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v6}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v0, v4

    :goto_3
    invoke-virtual {v1, v3, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method
