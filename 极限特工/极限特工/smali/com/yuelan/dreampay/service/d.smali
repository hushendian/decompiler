.class final Lcom/yuelan/dreampay/service/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/service/ShieldSmsService;

.field private final synthetic b:Lcom/yuelan/dreampay/date/PayDetailInfo;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/service/ShieldSmsService;Lcom/yuelan/dreampay/date/PayDetailInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/service/d;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    iput-object p2, p0, Lcom/yuelan/dreampay/service/d;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    invoke-virtual {v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->getPayState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/service/d;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yuelan/dreampay/service/d;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Lcom/yuelan/dreampay/service/ShieldSmsService;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/service/d;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    iget-object v1, p0, Lcom/yuelan/dreampay/service/d;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v2, v1}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Lcom/yuelan/dreampay/service/ShieldSmsService;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/yuelan/dreampay/service/d;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    iget-object v1, p0, Lcom/yuelan/dreampay/service/d;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v2, v1}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Lcom/yuelan/dreampay/service/ShieldSmsService;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
