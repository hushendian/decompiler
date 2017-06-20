.class final Lcom/yuelan/dreampay/pay/B;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private final synthetic b:Lcom/yuelan/dreampay/listen/PayCallback;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/B;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v3, 0xfa4

    const/16 v5, 0xfa1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "200"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "payResults"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v0, "info"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v4, Lcom/yuelan/dreampay/date/PayOtherInfo;

    invoke-direct {v4, v0}, Lcom/yuelan/dreampay/date/PayOtherInfo;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "payP"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(I)V

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e()V

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->f()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getPayClass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getShowTheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/B;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v1, v2, v0, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/B;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-interface {v0, v5}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v6, v2}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-direct {v2, v1}, Lcom/yuelan/dreampay/date/PayDetailInfo;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v4}, Lcom/yuelan/dreampay/date/PayDetailInfo;->setPayOtherInfo(Lcom/yuelan/dreampay/date/PayOtherInfo;)V

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/B;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->showPayContentDialog_Theme(Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;J)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    :cond_4
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/B;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-interface {v1}, Lcom/yuelan/dreampay/listen/PayCallback;->payStart()V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/B;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v1, v0, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    sget v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/B;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/B;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-interface {v0, v3}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/B;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v6, v2}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
