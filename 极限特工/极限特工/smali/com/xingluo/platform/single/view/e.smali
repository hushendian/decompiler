.class Lcom/xingluo/platform/single/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/view/c;

.field private final synthetic b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/view/c;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/view/e;->a:Lcom/xingluo/platform/single/view/c;

    iput-object p2, p0, Lcom/xingluo/platform/single/view/e;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/view/e;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/view/e;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/view/e;->a:Lcom/xingluo/platform/single/view/c;

    invoke-static {v0}, Lcom/xingluo/platform/single/view/c;->a(Lcom/xingluo/platform/single/view/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
