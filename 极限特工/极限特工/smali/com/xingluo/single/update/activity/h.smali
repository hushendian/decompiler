.class Lcom/xingluo/single/update/activity/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;


# direct methods
.method constructor <init>(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/activity/h;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/h;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    invoke-virtual {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
