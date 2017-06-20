.class public Lcom/yuelan/dreampay/activity/DownloadListviewDialog;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/yuelan/dreampay/activity/DownloadListviewDialog;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/yuelan/dreampay/activity/DownloadListviewDialog;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/activity/DownloadListviewDialog;->a:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "mili_smspay_download_list_layout"

    invoke-static {v1, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/activity/DownloadListviewDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
