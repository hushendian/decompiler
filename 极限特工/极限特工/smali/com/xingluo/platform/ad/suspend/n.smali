.class Lcom/xingluo/platform/ad/suspend/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownLoadProgressCurSize(JJI)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method public onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method public onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mLog:Lcom/xingluo/platform/single/util/i;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestTag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__response data is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xingluo/platform/single/net/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_2

    check-cast p2, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->o()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->a()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionFlag:I

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-static {v1, v4}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$2(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Z)V

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->refreshCurrentView(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$3(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v5, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-static {v1, v4}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$4(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Z)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->refreshCurrentView(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$3(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadSuspension2:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$5(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    sget-object v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    new-instance v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    sget-object v3, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$6(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionAdapter2:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$7(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->refreshCurrentView(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$3(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/util/List;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mLog:Lcom/xingluo/platform/single/util/i;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "-tag 46 XLCrossRecommendData is null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mLog:Lcom/xingluo/platform/single/util/i;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "-response data failure"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto/16 :goto_0
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/n;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method
