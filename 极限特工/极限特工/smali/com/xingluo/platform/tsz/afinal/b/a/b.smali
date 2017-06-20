.class Lcom/xingluo/platform/tsz/afinal/b/a/b;
.super Lcom/xingluo/platform/tsz/afinal/b/a/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xingluo/platform/tsz/afinal/b/a/j",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/tsz/afinal/b/a/a;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/tsz/afinal/b/a/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/b/a/b;->a:Lcom/xingluo/platform/tsz/afinal/b/a/a;

    invoke-direct {p0, p2}, Lcom/xingluo/platform/tsz/afinal/b/a/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/xingluo/platform/tsz/afinal/b/a/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-static {p2}, Lcom/xingluo/platform/tsz/afinal/d/c;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
