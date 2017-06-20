.class final Lcom/yuelan/dreampay/pay/D;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private final synthetic b:Landroid/app/Dialog;

.field private final synthetic c:Lcom/yuelan/dreampay/date/PayDetailInfo;

.field private final synthetic d:Lcom/yuelan/dreampay/listen/PayCallback;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/app/Dialog;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/D;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/D;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/D;->c:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iput-object p4, p0, Lcom/yuelan/dreampay/pay/D;->d:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/D;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/D;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/D;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/D;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/D;->c:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/D;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->show(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/D;->d:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-interface {v0}, Lcom/yuelan/dreampay/listen/PayCallback;->payStart()V

    :goto_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/D;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/D;->c:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/D;->d:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    return-void

    :cond_1
    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/D;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->show(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yuelan/dreampay/pay/E;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/D;->d:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {v1, p0, v2}, Lcom/yuelan/dreampay/pay/E;-><init>(Lcom/yuelan/dreampay/pay/D;Lcom/yuelan/dreampay/listen/PayCallback;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
