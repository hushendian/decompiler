.class final Lcom/yuelan/dreampay/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/view/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/view/LoadingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/view/d;->a:Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    sget-wide v0, Lcom/yuelan/dreampay/date/ConFigFile;->TIME_YZMWAIT:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/yuelan/dreampay/view/d;->a:Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-static {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->a(Lcom/yuelan/dreampay/view/LoadingDialog;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/yuelan/dreampay/view/d;->a:Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-static {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->b(Lcom/yuelan/dreampay/view/LoadingDialog;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
