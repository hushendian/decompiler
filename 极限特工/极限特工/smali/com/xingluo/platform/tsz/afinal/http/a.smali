.class public abstract Lcom/xingluo/platform/tsz/afinal/http/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a;->a:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a;->b:I

    return-void
.end method


# virtual methods
.method public a(ZI)Lcom/xingluo/platform/tsz/afinal/http/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lcom/xingluo/platform/tsz/afinal/http/a",
            "<TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/xingluo/platform/tsz/afinal/http/a;->a:Z

    iput p2, p0, Lcom/xingluo/platform/tsz/afinal/http/a;->b:I

    return-object p0
.end method

.method public a(JJ)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a;->a:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/tsz/afinal/http/a;->b:I

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method
