.class Lcom/xingluo/single/update/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;


# direct methods
.method constructor <init>(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/activity/a;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/activity/a;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    # getter for: Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->access$0(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/single/update/activity/a;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    # getter for: Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->access$0(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/single/update/activity/a;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    invoke-virtual {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->doDownload()V

    return-void
.end method
