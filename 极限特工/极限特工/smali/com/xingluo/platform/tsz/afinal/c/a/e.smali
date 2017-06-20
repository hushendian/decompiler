.class public Lcom/xingluo/platform/tsz/afinal/c/a/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xingluo/platform/tsz/afinal/c/a/f;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v1

    if-nez p1, :cond_0

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    const-string v1, "getDeleteSQL:idValue is null"

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " WHERE "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c/a/f;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/a/f;
    .locals 7

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/c/a/f;

    invoke-direct {v1}, Lcom/xingluo/platform/tsz/afinal/c/a/f;-><init>()V

    const-string v0, "INSERT INTO "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, ") VALUES ( "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/b;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/c/a/f;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    new-instance v0, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this entity["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has no property"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/e;

    invoke-static {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Lcom/xingluo/platform/tsz/afinal/c/b/e;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/c;

    invoke-static {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Lcom/xingluo/platform/tsz/afinal/c/b/c;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v3, Lcom/xingluo/platform/tsz/afinal/c/a/f;

    invoke-direct {v3}, Lcom/xingluo/platform/tsz/afinal/c/a/f;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v0, "UPDATE "

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " SET "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, " WHERE "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/String;)V

    return-object v3

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/b;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "=?,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static a(Lcom/xingluo/platform/tsz/afinal/c/b/c;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/b/b;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lcom/xingluo/platform/tsz/afinal/c/a/c;

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v2

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c/b/b;

    invoke-direct {v0, v3, v2}, Lcom/xingluo/platform/tsz/afinal/c/b/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/xingluo/platform/tsz/afinal/c/b/e;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/b/b;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c/b/b;

    invoke-direct {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/c/b/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c/b/b;

    invoke-virtual {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/c/b/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/util/Date;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/sql/Date;

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->e()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    const-class v4, Ljava/lang/Integer;

    if-eq v3, v4, :cond_0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    const-class v4, Ljava/lang/Long;

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, v1, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " TEXT PRIMARY KEY,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/e;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->e()Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_3

    const-class v4, Ljava/lang/Integer;

    if-eq v0, v4, :cond_3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_3

    const-class v4, Ljava/lang/Long;

    if-ne v0, v4, :cond_5

    :cond_3
    const-string v0, " INTEGER"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_3
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_6

    const-class v4, Ljava/lang/Float;

    if-eq v0, v4, :cond_6

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_6

    const-class v4, Ljava/lang/Double;

    if-ne v0, v4, :cond_7

    :cond_6
    const-string v0, " REAL"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_8

    const-class v4, Ljava/lang/Boolean;

    if-ne v0, v4, :cond_4

    :cond_8
    const-string v0, " NUMERIC"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " INTEGER"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/tsz/afinal/c/b/b;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Integer;

    if-nez v3, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/xingluo/platform/tsz/afinal/c/b/b;

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v2, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/e;

    invoke-static {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Lcom/xingluo/platform/tsz/afinal/c/b/e;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/c;

    invoke-static {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Lcom/xingluo/platform/tsz/afinal/c/b/c;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/xingluo/platform/tsz/afinal/c/a/f;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c/a/f;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/a/f;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDeleteSQL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " WHERE "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/c/a/f;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/a/f;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this entity["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s id value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v2, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v2, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/e;

    invoke-static {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Lcom/xingluo/platform/tsz/afinal/c/b/e;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/c;

    invoke-static {v0, p0}, Lcom/xingluo/platform/tsz/afinal/c/a/e;->a(Lcom/xingluo/platform/tsz/afinal/c/b/c;Ljava/lang/Object;)Lcom/xingluo/platform/tsz/afinal/c/b/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/xingluo/platform/tsz/afinal/c/a/f;

    invoke-direct {v1}, Lcom/xingluo/platform/tsz/afinal/c/a/f;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v0, "UPDATE "

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " SET "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, " WHERE "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c()Lcom/xingluo/platform/tsz/afinal/c/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/b;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "=?,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/b;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/tsz/afinal/c/a/f;->a(Ljava/lang/Object;)V

    goto :goto_3
.end method
