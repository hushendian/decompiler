.class final Lcom/yuelan/dreampay/pay/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/D;

.field private final synthetic b:Lcom/yuelan/dreampay/listen/PayCallback;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/D;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/E;->a:Lcom/yuelan/dreampay/pay/D;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/E;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/E;->a:Lcom/yuelan/dreampay/pay/D;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/D;->a(Lcom/yuelan/dreampay/pay/D;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/E;->b:Lcom/yuelan/dreampay/listen/PayCallback;

    invoke-interface {v0}, Lcom/yuelan/dreampay/listen/PayCallback;->payStart()V

    return-void
.end method
