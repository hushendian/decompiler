.class public Lcom/xingluo/platform/tsz/afinal/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/tsz/afinal/b/a/i;


# instance fields
.field private final a:Lcom/xingluo/platform/tsz/afinal/b/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xingluo/platform/tsz/afinal/b/a/j",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/b/a/b;

    invoke-direct {v0, p0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/b;-><init>(Lcom/xingluo/platform/tsz/afinal/b/a/a;I)V

    iput-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/a;->a:Lcom/xingluo/platform/tsz/afinal/b/a/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/a;->a:Lcom/xingluo/platform/tsz/afinal/b/a/j;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/a;->a:Lcom/xingluo/platform/tsz/afinal/b/a/j;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/b/a/j;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/a;->a:Lcom/xingluo/platform/tsz/afinal/b/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/xingluo/platform/tsz/afinal/b/a/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/b/a/a;->a:Lcom/xingluo/platform/tsz/afinal/b/a/j;

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/tsz/afinal/b/a/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
