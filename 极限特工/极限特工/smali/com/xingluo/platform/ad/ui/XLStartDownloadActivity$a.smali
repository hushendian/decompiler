.class Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    const-string v1, "xlMainHeadClose"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    const-string v2, "xlMainHeadBack"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    const-string v3, "startAndSaveDownloadbtn"

    invoke-static {v2, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    const-string v4, "nomalDownloadbtn"

    invoke-static {v3, v4}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v0, :cond_0

    if-ne v4, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne v4, v3, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    # getter for: Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mLogger:Lcom/xingluo/platform/single/util/i;
    invoke-static {v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->access$0(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "onClick btnNomalId"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    # invokes: Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->downloadBySystem()V
    invoke-static {v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->access$1(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)V

    goto :goto_0

    :cond_3
    if-ne v4, v2, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    # getter for: Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mLogger:Lcom/xingluo/platform/single/util/i;
    invoke-static {v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->access$0(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "onClick btnStartSaveId"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    # getter for: Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mCrossData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;
    invoke-static {v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->access$2(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    # getter for: Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->mDLdata:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;
    invoke-static {v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->access$3(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    # invokes: Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->downloadGameSearch()V
    invoke-static {v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->access$4(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity$a;->a:Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;

    # invokes: Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->downloadBySystem()V
    invoke-static {v0}, Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;->access$1(Lcom/xingluo/platform/ad/ui/XLStartDownloadActivity;)V

    goto :goto_0
.end method
