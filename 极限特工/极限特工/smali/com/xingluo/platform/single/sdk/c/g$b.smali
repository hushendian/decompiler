.class Lcom/xingluo/platform/single/sdk/c/g$b;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sdk/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sdk/c/g;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/single/sdk/c/g;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/c/g$b;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g$b;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-static {v0}, Lcom/xingluo/platform/single/sdk/c/g;->i(Lcom/xingluo/platform/single/sdk/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g$b;->a:Lcom/xingluo/platform/single/sdk/c/g;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sdk/c/g;->a()V

    :cond_0
    return-void
.end method
