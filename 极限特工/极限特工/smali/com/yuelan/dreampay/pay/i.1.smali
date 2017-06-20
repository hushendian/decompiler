.class final Lcom/yuelan/dreampay/pay/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/i;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/i;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/i;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/i;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/i;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
