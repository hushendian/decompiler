.class public Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;
.super Landroid/app/Activity;


# static fields
.field private static final DATA_ACTIVITYID:Ljava/lang/String; = "activity_id"


# instance fields
.field private mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

.field private mSubUtils:Lcom/unicom/dcLoader/SubUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/unicom/dcLoader/SubUtils;

    invoke-direct {v0}, Lcom/unicom/dcLoader/SubUtils;-><init>()V

    iput-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mSubUtils:Lcom/unicom/dcLoader/SubUtils;

    return-void
.end method


# virtual methods
.method public loadLocalActivity(Landroid/app/Activity;I)Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mSubUtils:Lcom/unicom/dcLoader/SubUtils;

    const-string v1, "loadLocalActivity"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/unicom/dcLoader/SubUtils;->callInnerMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    return-object v0
.end method

.method public onActivityResult_(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onActivityResult(Landroid/content/Context;IILandroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onBackPressed(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activity_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->loadLocalActivity(Landroid/app/Activity;I)Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0, p1}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onCreate(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onDestroy(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0, p1, p2}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onKeyDown(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0, p1, p2}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onKeyLongPress(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0, p1, p2}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onKeyUp(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onPause(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onResume(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onStart(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onStop(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/wostore/unipay/paysecurity/SecurityActivity;->mLocalActivity:Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;

    invoke-interface {v0, p0, p1}, Lcom/unicom/wostore/unipay/paysecurity/LocalActivity;->onTouchEvent(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
