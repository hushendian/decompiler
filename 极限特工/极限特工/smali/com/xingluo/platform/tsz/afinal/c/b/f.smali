.class public Lcom/xingluo/platform/tsz/afinal/c/b/f;
.super Ljava/lang/Object;


# static fields
.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/c/b/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/c/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/c/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/tsz/afinal/c/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/xingluo/platform/tsz/afinal/c/b/a;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->h:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/xingluo/platform/tsz/afinal/c/b/f;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    const-string v1, "table info get error,because the clazz is null"

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/f;

    if-nez v0, :cond_7

    new-instance v1, Lcom/xingluo/platform/tsz/afinal/c/b/f;

    invoke-direct {v1}, Lcom/xingluo/platform/tsz/afinal/c/b/f;-><init>()V

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/d/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/d/a;->c(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v2, Lcom/xingluo/platform/tsz/afinal/c/b/a;

    invoke-direct {v2}, Lcom/xingluo/platform/tsz/afinal/c/b/a;-><init>()V

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/d/b;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/xingluo/platform/tsz/afinal/d/b;->c(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->b(Ljava/lang/reflect/Method;)V

    invoke-static {p0, v0}, Lcom/xingluo/platform/tsz/afinal/d/b;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->a(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/tsz/afinal/c/b/a;->b(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Lcom/xingluo/platform/tsz/afinal/c/b/a;)V

    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/d/a;->e(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_2
    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/d/a;->f(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    invoke-static {p0}, Lcom/xingluo/platform/tsz/afinal/d/a;->g(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_6
    sget-object v0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_7
    if-nez v0, :cond_c

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the class["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s table is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/xingluo/platform/tsz/afinal/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the class["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s idField is null , \n you can define _id,id property or use annotation @id to solution this exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xingluo/platform/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/e;

    if-eqz v0, :cond_1

    iget-object v3, v1, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/c;

    if-eqz v0, :cond_3

    iget-object v3, v1, Lcom/xingluo/platform/tsz/afinal/c/b/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/c/b/d;

    if-eqz v0, :cond_5

    iget-object v3, v1, Lcom/xingluo/platform/tsz/afinal/c/b/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/c/b/f;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/c/b/f;->a(Ljava/lang/Class;)Lcom/xingluo/platform/tsz/afinal/c/b/f;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xingluo/platform/tsz/afinal/c/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->f:Lcom/xingluo/platform/tsz/afinal/c/b/a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->g:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/xingluo/platform/tsz/afinal/c/b/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->f:Lcom/xingluo/platform/tsz/afinal/c/b/a;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/c/b/f;->g:Z

    return v0
.end method
