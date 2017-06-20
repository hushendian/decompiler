.class final Lcom/yuelan/dreampay/pay/y;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private final synthetic b:Lcom/yuelan/dreampay/listen/PayCallback;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/y;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/y;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/y;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const v5, 0x9c6d

    const v3, 0x9c69

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/codelib/comm/MyPreference;

    move-result-object v0

    const-string v1, "province"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/yuelan/codelib/comm/MyPreference;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "test2"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u76f4\u63a5\u83b7\u53d6\u901a\u90532"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/y;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/y;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/codelib/comm/MyPreference;

    move-result-object v0

    const-string v1, "zcnum"

    invoke-virtual {v0, v1, v2}, Lcom/yuelan/codelib/comm/MyPreference;->readInt(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->REDIALOG_ISSHOW:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v1

    const-string v3, ""

    const-string v4, "\u786e\u5b9a"

    const-string v5, "\u7b2c\u4e00\u6b21\u4f7f\u7528\uff0c\u9700\u8981\u53d1\u9001\u4e00\u6761\u6ce8\u518c\u77ed\u4fe1\n\u4e0d\u4f1a\u6536\u53d6\u9664\u4fe1\u606f\u8d390.1\u5143\u989d\u5916\u7684\u8d39\u7528."

    new-instance v7, Lcom/yuelan/dreampay/pay/z;

    iget-object v6, p0, Lcom/yuelan/dreampay/pay/y;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {v7, p0, v6}, Lcom/yuelan/dreampay/pay/z;-><init>(Lcom/yuelan/dreampay/pay/y;Lcom/yuelan/dreampay/listen/PayCallback;)V

    move v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yuelan/dreampay/listen/DialogClickListener;)V

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/y;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v4, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AutoBDPhoneUtil;->sendBDSms(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    sget-boolean v0, Lcom/yuelan/dreampay/common/AppDo;->isAutoOpenGprs:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-interface {v0, v5}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v5, v1, v4, v2}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-interface {v0, v3}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/y;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v4, v2}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
