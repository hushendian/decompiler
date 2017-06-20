.class final Lcom/yuelan/dreampay/pay/J;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/I;

.field private final synthetic b:Lcom/yuelan/dreampay/listen/SmsReceiverListener;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/I;Lcom/yuelan/dreampay/listen/SmsReceiverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/J;->a:Lcom/yuelan/dreampay/pay/I;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/J;->b:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/J;->a:Lcom/yuelan/dreampay/pay/I;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/I;->c(Lcom/yuelan/dreampay/pay/I;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/J;->a:Lcom/yuelan/dreampay/pay/I;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/J;->b:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    const/4 v1, 0x0

    const-string v2, "timeout"

    invoke-interface {v0, v1, v2}, Lcom/yuelan/dreampay/listen/SmsReceiverListener;->receiver(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
