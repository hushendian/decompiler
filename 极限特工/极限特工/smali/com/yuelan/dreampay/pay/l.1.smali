.class final Lcom/yuelan/dreampay/pay/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private final synthetic b:Lcom/yuelan/dreampay/date/PayDetailInfo;

.field private final synthetic c:Lcom/yuelan/dreampay/listen/PayCallback;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/l;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/l;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/l;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    const v4, 0x9c70

    const/4 v11, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/l;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-interface {v0, v4}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v1, v2, v3}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "yzmurl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/l;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getFilterVerifSpnumber()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/l;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getFilterVerifHeadContent()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/l;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getFilterVerifEndContent()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/yuelan/dreampay/pay/I;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Lcom/yuelan/dreampay/pay/m;

    iget-object v7, p0, Lcom/yuelan/dreampay/pay/l;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v10, p0, Lcom/yuelan/dreampay/pay/l;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {v5, p0, v6, v7, v10}, Lcom/yuelan/dreampay/pay/m;-><init>(Lcom/yuelan/dreampay/pay/l;Ljava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v9}, Lcom/yuelan/dreampay/pay/I;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Lcom/yuelan/dreampay/listen/SmsReceiverListener;JLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/l;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const/16 v3, 0x1b60

    iget-object v4, p0, Lcom/yuelan/dreampay/pay/l;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v1, v2, v3, v4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/l;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v1, v11, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    const/16 v1, 0x1b65

    invoke-static {v1, v0}, Lcom/yuelan/dreampay/date/Result;->putNewErrorCode(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/l;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const/16 v2, 0x1b65

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/l;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/l;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/l;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
