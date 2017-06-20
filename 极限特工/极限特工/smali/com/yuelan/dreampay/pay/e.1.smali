.class final Lcom/yuelan/dreampay/pay/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private final synthetic b:Lcom/yuelan/dreampay/date/PayDetailInfo;

.field private final synthetic c:Landroid/app/Dialog;

.field private final synthetic d:Lcom/yuelan/dreampay/listen/PayCallback;

.field private final synthetic e:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Landroid/app/Dialog;Lcom/yuelan/dreampay/listen/PayCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/e;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/e;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/e;->c:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/yuelan/dreampay/pay/e;->d:Lcom/yuelan/dreampay/listen/PayCallback;

    iput-object p5, p0, Lcom/yuelan/dreampay/pay/e;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x138a

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/e;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getCloseTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/e;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget v2, v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a:I

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/e;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    iget v1, v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/e;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    const/4 v1, 0x0

    iput v1, v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a:I

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/e;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/e;->d:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-interface {v0, v4}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/e;->e:Landroid/app/Activity;

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/e;->b:Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-static {}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v1, v2, v3}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
