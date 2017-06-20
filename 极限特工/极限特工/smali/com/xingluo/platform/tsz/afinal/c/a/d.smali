.class public Lcom/xingluo/platform/tsz/afinal/c/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TO;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TM;>;"
        }
    .end annotation
.end field

.field d:Lcom/xingluo/platform/tsz/afinal/c;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/xingluo/platform/tsz/afinal/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/lang/Class",
            "<TO;>;",
            "Ljava/lang/Class",
            "<TM;>;",
            "Lcom/xingluo/platform/tsz/afinal/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->d:Lcom/xingluo/platform/tsz/afinal/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->e:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->d:Lcom/xingluo/platform/tsz/afinal/c;

    iget-object v1, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->b:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->c:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xingluo/platform/tsz/afinal/c;->c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->e:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->e:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TM;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/a/d;->e:Ljava/util/List;

    return-void
.end method
