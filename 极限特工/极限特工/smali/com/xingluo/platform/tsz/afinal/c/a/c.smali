.class public Lcom/xingluo/platform/tsz/afinal/c/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TM;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TO;>;"
        }
    .end annotation
.end field

.field d:Lcom/xingluo/platform/tsz/afinal/c;

.field e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field f:Z

.field private g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lcom/xingluo/platform/tsz/afinal/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Ljava/lang/Class",
            "<TM;>;",
            "Ljava/lang/Class",
            "<TO;>;",
            "Lcom/xingluo/platform/tsz/afinal/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->f:Z

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->d:Lcom/xingluo/platform/tsz/afinal/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->d:Lcom/xingluo/platform/tsz/afinal/c;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->b:Ljava/lang/Class;

    new-array v4, v7, [Ljava/lang/Class;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->c:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xingluo/platform/tsz/afinal/c;->a(Lcom/xingluo/platform/tsz/afinal/c/a/b;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    iput-boolean v7, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/c/a/c;->g:Ljava/lang/Object;

    return-void
.end method
