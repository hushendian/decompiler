.class final Lcom/yuelan/dreampay/pay/G;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/F;

.field private final synthetic b:Lcom/yuelan/dreampay/date/PayDetailInfo;

.field private final synthetic c:Lcom/yuelan/dreampay/listen/PayCallback;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/F;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/G;->a:Lcom/yuelan/dreampay/pay/F;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/G;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/G;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/G;->a:Lcom/yuelan/dreampay/pay/F;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/F;->c(Lcom/yuelan/dreampay/pay/F;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/G;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/G;->a:Lcom/yuelan/dreampay/pay/F;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/F;->c(Lcom/yuelan/dreampay/pay/F;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0xc38d

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    const-string v0, "IP\u66f4\u65b0\u4e86"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/G;->a:Lcom/yuelan/dreampay/pay/F;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/F;->c(Lcom/yuelan/dreampay/pay/F;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/G;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/G;->a:Lcom/yuelan/dreampay/pay/F;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/F;->c(Lcom/yuelan/dreampay/pay/F;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/G;->a:Lcom/yuelan/dreampay/pay/F;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/F;->c(Lcom/yuelan/dreampay/pay/F;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/G;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const v2, 0x9c73

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/G;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/G;->a:Lcom/yuelan/dreampay/pay/F;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/F;->c(Lcom/yuelan/dreampay/pay/F;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/G;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto :goto_0
.end method
