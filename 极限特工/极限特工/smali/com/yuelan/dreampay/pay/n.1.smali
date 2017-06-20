.class final Lcom/yuelan/dreampay/pay/n;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/m;

.field private final synthetic b:Lcom/yuelan/dreampay/date/PayDetailInfo;

.field private final synthetic c:Lcom/yuelan/dreampay/listen/PayCallback;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/m;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/n;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x1b65

    const/4 v5, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const/16 v2, 0x1b5e

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/n;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v5, v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "fanhui"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const/16 v2, 0x2328

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/n;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b65

    invoke-static {v2, v1}, Lcom/yuelan/dreampay/date/Result;->putNewErrorCode(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v1

    iget-object v1, v1, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v1

    iget-object v1, v1, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const/16 v3, 0x1b65

    iget-object v4, p0, Lcom/yuelan/dreampay/pay/n;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v1, v2, v3, v4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v1

    iget-object v1, v1, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v1, v2, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v1

    iget-object v1, v1, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    invoke-static {v6, v0}, Lcom/yuelan/dreampay/date/Result;->putNewErrorCode(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/n;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v6, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v5, v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const/16 v2, 0x1b5d

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/n;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/n;->a:Lcom/yuelan/dreampay/pay/m;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/m;->a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;

    move-result-object v0

    iget-object v0, v0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/n;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v5, v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
