.class final Lcom/yuelan/dreampay/pay/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/Dialog;

.field private final synthetic b:Lcom/yuelan/dreampay/listen/ExitListener;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/yuelan/dreampay/listen/ExitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/ac;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/ac;->b:Lcom/yuelan/dreampay/listen/ExitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/ac;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/ac;->b:Lcom/yuelan/dreampay/listen/ExitListener;

    invoke-interface {v0}, Lcom/yuelan/dreampay/listen/ExitListener;->exit()V

    return-void
.end method
