.class public Lcom/yuelan/dreampay/view/BaseTisDiaolog;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yuelan/dreampay/listen/DialogClickListener;)V
    .locals 6

    const/16 v5, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Dialog;

    const-string v1, "style"

    const-string v2, "mili_smspay_dialog"

    invoke-static {p1, v1, v2}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "mili_smspay_basedialog"

    invoke-static {p1, v1, v2}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const-string v0, "id"

    const-string v1, "mili_smspay_basedialog_button_two"

    invoke-static {p1, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "id"

    const-string v2, "mili_smspay_basedialog_button_one"

    invoke-static {p1, v1, v2}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "id"

    const-string v4, "mili_smspay_basedialog_textview"

    invoke-static {p1, v2, v4}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p4}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {p3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {p5}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v2, 0x1

    if-ne p6, v2, :cond_1

    iget-object v2, p0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v2, p0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->a:Landroid/app/Dialog;

    invoke-virtual {v2, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    const-string v2, "id"

    const-string v4, "mili_smspay_basedialog_close"

    invoke-static {p1, v2, v4}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v4, Lcom/yuelan/dreampay/view/a;

    invoke-direct {v4, p0, p7}, Lcom/yuelan/dreampay/view/a;-><init>(Lcom/yuelan/dreampay/view/BaseTisDiaolog;Lcom/yuelan/dreampay/listen/DialogClickListener;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/yuelan/dreampay/view/b;

    invoke-direct {v2, p0, p7}, Lcom/yuelan/dreampay/view/b;-><init>(Lcom/yuelan/dreampay/view/BaseTisDiaolog;Lcom/yuelan/dreampay/listen/DialogClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/yuelan/dreampay/view/c;

    invoke-direct {v1, p0, p7}, Lcom/yuelan/dreampay/view/c;-><init>(Lcom/yuelan/dreampay/view/BaseTisDiaolog;Lcom/yuelan/dreampay/listen/DialogClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yuelan/dreampay/view/BaseTisDiaolog;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->a:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
