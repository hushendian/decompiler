.class Lcom/xingluo/platform/ad/suspend/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/s;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/s;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/w;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/ad/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/w;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->r(Lcom/xingluo/platform/ad/suspend/s;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/w;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->d()V

    goto :goto_0
.end method
