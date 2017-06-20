.class final Lcom/yuelan/dreampay/pay/w;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private final synthetic b:Lcom/yuelan/dreampay/listen/PayCallback;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/w;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/w;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/w;->c:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/yuelan/dreampay/common/AppDo;->isAutoOpenGprs:Z

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/w;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/w;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/w;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
