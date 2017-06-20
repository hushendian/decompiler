.class final Lcom/yuelan/dreampay/pay/F;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private b:Lcom/yuelan/dreampay/date/PayDetailInfo;

.field private c:Lcom/yuelan/dreampay/listen/PayCallback;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 3

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yuelan/dreampay/pay/F;->d:Z

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/F;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    new-instance v0, Lcom/yuelan/dreampay/pay/G;

    invoke-direct {v0, p0, p2, p3}, Lcom/yuelan/dreampay/pay/G;-><init>(Lcom/yuelan/dreampay/pay/F;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yuelan/dreampay/pay/H;

    invoke-direct {v2, p0, v0}, Lcom/yuelan/dreampay/pay/H;-><init>(Lcom/yuelan/dreampay/pay/F;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/F;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/yuelan/dreampay/pay/F;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/yuelan/dreampay/pay/F;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yuelan/dreampay/pay/F;->d:Z

    return-void
.end method

.method static synthetic c(Lcom/yuelan/dreampay/pay/F;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0x2328

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)V

    iget-boolean v0, p0, Lcom/yuelan/dreampay/pay/F;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/yuelan/dreampay/pay/F;->d:Z

    invoke-virtual {p0}, Lcom/yuelan/dreampay/pay/F;->getResultCode()I

    move-result v0

    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    if-eqz v1, :cond_5

    const-string v0, "28"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x138e

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    const-string v0, "IP\u66f4\u65b0\u4e86"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_2

    const-string v0, "28"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u53d1\u6ce8\u518c\u77ed\u4fe1\u6210\u529f"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/codelib/comm/MyPreference;

    move-result-object v0

    const-string v1, "zcnum"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yuelan/codelib/comm/MyPreference;->readInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/codelib/comm/MyPreference;

    move-result-object v1

    const-string v2, "zcnum"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/yuelan/codelib/comm/MyPreference;->write(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getNowBu()I

    move-result v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getSmArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/F;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v5, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v3, v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getSmsArray()Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getNowBu()I

    move-result v2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v4, p0, Lcom/yuelan/dreampay/pay/F;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lorg/json/JSONArray;ILcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/F;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v5, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v3, v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    const/16 v2, 0xfa5

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/F;->c:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/F;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/F;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v4, v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
