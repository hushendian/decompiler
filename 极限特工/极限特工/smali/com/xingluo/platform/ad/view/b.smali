.class Lcom/xingluo/platform/ad/view/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/view/a;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/view/b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/view/b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/view/a;->a(Lcom/xingluo/platform/ad/view/a;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/view/b;->a:Lcom/xingluo/platform/ad/view/a;

    invoke-static {v1}, Lcom/xingluo/platform/ad/view/a;->b(Lcom/xingluo/platform/ad/view/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
