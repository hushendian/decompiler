.class public final Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;
.super Landroid/app/Service;


# instance fields
.field private mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

.field private useSelfSdk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SecurityService"

    invoke-direct {p0, v0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->useSelfSdk:Z

    return-void
.end method

.method private stop(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->startForeground(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/dcLoader/Utils;->isInit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/unicom/dcLoader/SubUtils;

    invoke-direct {v0}, Lcom/unicom/dcLoader/SubUtils;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unicom/dcLoader/SubUtils;->getLocalService(Landroid/content/Context;)Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-interface {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onCreate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/dcLoader/Utils;->isInit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-interface {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onDestroy(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 v1, 0x2

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/dcLoader/Utils;->isInit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->stopSelf()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityServiceFramework;->mLocalService:Lcom/unicom/wostore/unipay/paysecurity/LocalService;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unicom/wostore/unipay/paysecurity/LocalService;->onStartCommand(Landroid/content/Context;Landroid/content/Intent;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
