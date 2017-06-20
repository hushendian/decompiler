.class final Lcom/yuelan/dreampay/pay/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/listen/DialogClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/y;

.field private final synthetic b:Lcom/yuelan/dreampay/listen/PayCallback;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/y;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/z;->a:Lcom/yuelan/dreampay/pay/y;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/z;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/z;->a:Lcom/yuelan/dreampay/pay/y;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/y;->a(Lcom/yuelan/dreampay/pay/y;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x1392

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    const-string v0, "\u5173\u95ed\u4e86\u77ed\u4fe1\u53d1\u9001\u63d0\u793a\u6846"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/z;->a:Lcom/yuelan/dreampay/pay/y;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/y;->a(Lcom/yuelan/dreampay/pay/y;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/z;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    return-void
.end method

.method public final one()V
    .locals 0

    return-void
.end method

.method public final two()V
    .locals 4

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/z;->a:Lcom/yuelan/dreampay/pay/y;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/y;->a(Lcom/yuelan/dreampay/pay/y;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/z;->a:Lcom/yuelan/dreampay/pay/y;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/y;->a(Lcom/yuelan/dreampay/pay/y;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/z;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/z;->a:Lcom/yuelan/dreampay/pay/y;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/y;->a(Lcom/yuelan/dreampay/pay/y;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AutoBDPhoneUtil;->sendBDSms(Landroid/content/Context;)V

    return-void
.end method
