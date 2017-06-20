.class final Lcom/yuelan/dreampay/pay/A;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private final synthetic b:Lcom/yuelan/dreampay/listen/PayCallback;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/A;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/A;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/A;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/A;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/A;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xfa3

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/A;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/A;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
.end method
