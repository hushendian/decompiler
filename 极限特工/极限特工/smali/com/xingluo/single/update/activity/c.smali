.class Lcom/xingluo/single/update/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;


# direct methods
.method constructor <init>(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/activity/c;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/single/update/activity/c;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    # getter for: Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;
    invoke-static {v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->access$1(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)Lcom/xingluo/single/update/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/single/update/AppInfo;->isReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/single/update/b/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {v3}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "exit app!"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
