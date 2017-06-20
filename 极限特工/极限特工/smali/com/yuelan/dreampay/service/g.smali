.class final Lcom/yuelan/dreampay/service/g;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/service/ShieldSmsService;

.field private b:Lcom/yuelan/dreampay/date/PayDetailInfo;


# direct methods
.method public constructor <init>(Lcom/yuelan/dreampay/service/ShieldSmsService;Lcom/yuelan/dreampay/date/PayDetailInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/service/g;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/yuelan/dreampay/service/g;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/yuelan/dreampay/service/g;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/yuelan/dreampay/service/g;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yuelan/dreampay/service/g;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Lcom/yuelan/dreampay/service/ShieldSmsService;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/yuelan/dreampay/service/g;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yuelan/dreampay/service/g;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Lcom/yuelan/dreampay/service/ShieldSmsService;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
