.class final Lcom/yuelan/dreampay/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/view/BaseTisDiaolog;

.field private final synthetic b:Lcom/yuelan/dreampay/listen/DialogClickListener;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/view/BaseTisDiaolog;Lcom/yuelan/dreampay/listen/DialogClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/view/b;->a:Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    iput-object p2, p0, Lcom/yuelan/dreampay/view/b;->b:Lcom/yuelan/dreampay/listen/DialogClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/view/b;->b:Lcom/yuelan/dreampay/listen/DialogClickListener;

    invoke-interface {v0}, Lcom/yuelan/dreampay/listen/DialogClickListener;->one()V

    iget-object v0, p0, Lcom/yuelan/dreampay/view/b;->a:Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    invoke-static {v0}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->a(Lcom/yuelan/dreampay/view/BaseTisDiaolog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
