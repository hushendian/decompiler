.class public Lcom/yuelan/dreampay/view/LoadingDialog;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->b:Z

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "style"

    const-string v2, "mili_smspay_dialog"

    invoke-static {p1, v1, v2}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "mili_smspay_loaddialog"

    invoke-static {p1, v1, v2}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v0, "id"

    const-string v2, "mili_smspay_lin_loading"

    invoke-static {p1, v0, v2}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/view/LoadingDialog;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lcom/yuelan/dreampay/view/LoadingDialog;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->b:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized loadtime()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->b:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yuelan/dreampay/view/d;

    invoke-direct {v1, p0}, Lcom/yuelan/dreampay/view/d;-><init>(Lcom/yuelan/dreampay/view/LoadingDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/yuelan/dreampay/view/LoadingDialog;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/yuelan/dreampay/view/LoadingDialog;->loadtime()V

    :cond_0
    return-void
.end method
