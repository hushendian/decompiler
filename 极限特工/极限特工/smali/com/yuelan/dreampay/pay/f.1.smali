.class final Lcom/yuelan/dreampay/pay/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private final synthetic b:Lorg/json/JSONArray;

.field private final synthetic c:I

.field private final synthetic d:Lcom/yuelan/dreampay/date/PayDetailInfo;

.field private final synthetic e:Lcom/yuelan/dreampay/listen/PayCallback;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lorg/json/JSONArray;ILcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/f;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/f;->b:Lorg/json/JSONArray;

    iput p3, p0, Lcom/yuelan/dreampay/pay/f;->c:I

    iput-object p4, p0, Lcom/yuelan/dreampay/pay/f;->d:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iput-object p5, p0, Lcom/yuelan/dreampay/pay/f;->e:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/f;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/f;->b:Lorg/json/JSONArray;

    iget v2, p0, Lcom/yuelan/dreampay/pay/f;->c:I

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/f;->d:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iget-object v4, p0, Lcom/yuelan/dreampay/pay/f;->e:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lorg/json/JSONArray;ILcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
