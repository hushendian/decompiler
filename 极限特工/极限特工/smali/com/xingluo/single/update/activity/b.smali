.class Lcom/xingluo/single/update/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;


# direct methods
.method constructor <init>(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/activity/b;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xingluo/single/update/activity/b;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    # getter for: Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->access$0(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/single/update/activity/b;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    # getter for: Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->access$0(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/b;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    invoke-virtual {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->finish()V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/b;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    # getter for: Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;
    invoke-static {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->access$1(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)Lcom/xingluo/single/update/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/single/update/AppInfo;->isReboot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "exit app!"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    sget-object v0, Lcom/xingluo/single/update/b/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const-string v1, "exit update!"

    invoke-interface {v0, v3, v1}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    goto :goto_0
.end method
