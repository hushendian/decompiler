.class Lcom/xingluo/platform/ad/suspend/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/s;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/s;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/x;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/x;->a:Lcom/xingluo/platform/ad/suspend/s;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/s;->k(Lcom/xingluo/platform/ad/suspend/s;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
