.class final Lcom/yuelan/dreampay/pay/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/F;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/F;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/H;->a:Lcom/yuelan/dreampay/pay/F;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/H;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x4e20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/H;->a:Lcom/yuelan/dreampay/pay/F;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/F;->a(Lcom/yuelan/dreampay/pay/F;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/H;->a:Lcom/yuelan/dreampay/pay/F;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/F;->b(Lcom/yuelan/dreampay/pay/F;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/H;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
