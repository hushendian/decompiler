.class public Lcn/egame/terminal/paysdk/EgamePayActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    invoke-interface {v0, p1}, Lcn/egame/terminal/paysdk/EgamePayInterface;->sdkDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcn/egame/terminal/paysdk/EgamePay;->sEPIInstance:Lcn/egame/terminal/paysdk/EgamePayInterface;

    invoke-interface {v0, p0, p1}, Lcn/egame/terminal/paysdk/EgamePayInterface;->sdkOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
