.class final Lcom/yuelan/dreampay/pay/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private final synthetic b:Lcom/yuelan/dreampay/date/PayDetailInfo;

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/yuelan/dreampay/listen/PayCallback;

.field private final synthetic g:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILjava/lang/String;Ljava/lang/String;Lcom/yuelan/dreampay/listen/PayCallback;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/h;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iput p3, p0, Lcom/yuelan/dreampay/pay/h;->c:I

    iput-object p4, p0, Lcom/yuelan/dreampay/pay/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/yuelan/dreampay/pay/h;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/yuelan/dreampay/pay/h;->f:Lcom/yuelan/dreampay/listen/PayCallback;

    iput-object p7, p0, Lcom/yuelan/dreampay/pay/h;->g:Lorg/json/JSONArray;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v4, 0x0

    const v3, 0x9c6f

    const/4 v6, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->f:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-interface {v0, v3}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v4, v2}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget v2, p0, Lcom/yuelan/dreampay/pay/h;->c:I

    invoke-virtual {v0, v2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->setNowBu(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/h;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const/16 v2, 0x1b5b

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/h;->f:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/h;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/h;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const/16 v3, 0x1b5c

    iget-object v4, p0, Lcom/yuelan/dreampay/pay/h;->f:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v1, v2, v3, v4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/h;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v1, v6, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v2, "112233"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "112233"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/h;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const/16 v2, 0x2328

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/h;->f:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/h;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/yuelan/dreampay/pay/h;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v5, p0, Lcom/yuelan/dreampay/pay/h;->f:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v2, v3, v4, v5}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/yuelan/codelib/sim/SIMUtil;->sendSmsMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/h;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/h;->g:Lorg/json/JSONArray;

    iget v2, p0, Lcom/yuelan/dreampay/pay/h;->c:I

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/h;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v4, p0, Lcom/yuelan/dreampay/pay/h;->f:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lorg/json/JSONArray;ILcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
