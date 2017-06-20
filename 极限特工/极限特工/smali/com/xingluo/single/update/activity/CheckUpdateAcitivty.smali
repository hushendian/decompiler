.class public Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private appInfo:Lcom/xingluo/single/update/AppInfo;

.field private ddz:Z

.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->ddz:Z

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)Lcom/xingluo/single/update/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x0

    const-string v0, "xingluo0908:createDialog"

    const-string v1, "dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "xl_update_dialog"

    invoke-static {p0, v1}, Lcom/xingluo/single/update/b/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "updateContent"

    invoke-static {p0, v1}, Lcom/xingluo/single/update/b/f;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6700\u65b0\u7248\u672c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;

    invoke-virtual {v4}, Lcom/xingluo/single/update/AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;

    invoke-virtual {v4}, Lcom/xingluo/single/update/AppInfo;->getVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;

    invoke-virtual {v3}, Lcom/xingluo/single/update/AppInfo;->getUpdateContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "updateBtn"

    invoke-static {p0, v1}, Lcom/xingluo/single/update/b/f;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xingluo/single/update/activity/a;

    invoke-direct {v2, p0}, Lcom/xingluo/single/update/activity/a;-><init>(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "cancelBtn"

    invoke-static {p0, v1}, Lcom/xingluo/single/update/b/f;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xingluo/single/update/activity/b;

    invoke-direct {v2, p0}, Lcom/xingluo/single/update/activity/b;-><init>(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/xingluo/single/update/activity/c;

    invoke-direct {v0, p0}, Lcom/xingluo/single/update/activity/c;-><init>(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v1
.end method

.method private setDialogOnKeyListener(Landroid/app/Dialog;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xingluo/single/update/activity/h;

    invoke-direct {v0, p0}, Lcom/xingluo/single/update/activity/h;-><init>(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected doDownload()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "xingluo0908:doDownload"

    const-string v1, "doDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "xl_download_dialog"

    invoke-static {p0, v1}, Lcom/xingluo/single/update/b/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "downloadprogress"

    invoke-static {p0, v1}, Lcom/xingluo/single/update/b/f;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "0%"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "pb_progressbar"

    invoke-static {p0, v2}, Lcom/xingluo/single/update/b/f;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v5, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v5, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;

    iget-boolean v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->ddz:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    new-instance v3, Lcom/xingluo/single/update/activity/d;

    invoke-direct {v3, p0, v1, v2}, Lcom/xingluo/single/update/activity/d;-><init>(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    invoke-static {p0, v5, v0, v3}, Lcom/xingluo/single/update/XLSingleUpdateManager;->doUpdate(Landroid/app/Activity;Lcom/xingluo/single/update/AppInfo;ILcom/xingluo/single/update/listener/b;)V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->setDialogOnKeyListener(Landroid/app/Dialog;)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "updateInfo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xingluo/single/update/AppInfo;

    iput-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;

    const-string v0, "ddzupdate"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->ddz:Z

    invoke-virtual {p0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->doDownload()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->ddz:Z

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;

    invoke-virtual {v0}, Lcom/xingluo/single/update/AppInfo;->isNewVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->finish()V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->appInfo:Lcom/xingluo/single/update/AppInfo;

    invoke-virtual {v0}, Lcom/xingluo/single/update/AppInfo;->isReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/single/update/b/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xingluo/single/update/service/CheckUpdateService;->getCheckUpdateListenerByEvent(I)Lcom/xingluo/single/update/listener/CheckUpdateListener;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "exit app!"

    invoke-interface {v0, v1, v2}, Lcom/xingluo/single/update/listener/CheckUpdateListener;->onResult(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
