.class final Lcom/yuelan/dreampay/pay/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/listen/SmsReceiverListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/l;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/yuelan/dreampay/date/PayDetailInfo;

.field private final synthetic d:Lcom/yuelan/dreampay/listen/PayCallback;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/l;Ljava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/m;->a:Lcom/yuelan/dreampay/pay/l;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/m;->c:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iput-object p4, p0, Lcom/yuelan/dreampay/pay/m;->d:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/m;)Lcom/yuelan/dreampay/pay/l;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/m;->a:Lcom/yuelan/dreampay/pay/l;

    return-object v0
.end method


# virtual methods
.method public final receiver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x1b5f

    invoke-static {p1}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "co"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "co"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/m;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yyzzmmurl"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    new-instance v1, Lcom/yuelan/dreampay/pay/n;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/m;->c:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/m;->d:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {v1, p0, v2, v3}, Lcom/yuelan/dreampay/pay/n;-><init>(Lcom/yuelan/dreampay/pay/m;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/yuelan/dreampay/pay/o;

    invoke-direct {v3, p0, v0, v1}, Lcom/yuelan/dreampay/pay/o;-><init>(Lcom/yuelan/dreampay/pay/m;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/m;->a:Lcom/yuelan/dreampay/pay/l;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/l;->a(Lcom/yuelan/dreampay/pay/l;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    invoke-static {v3, p2}, Lcom/yuelan/dreampay/date/Result;->putNewErrorCode(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/m;->a:Lcom/yuelan/dreampay/pay/l;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/l;->a(Lcom/yuelan/dreampay/pay/l;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/m;->c:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/m;->d:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v3, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/m;->a:Lcom/yuelan/dreampay/pay/l;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/l;->a(Lcom/yuelan/dreampay/pay/l;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/m;->c:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto :goto_0
.end method
