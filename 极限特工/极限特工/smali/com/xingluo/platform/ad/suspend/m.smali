.class Lcom/xingluo/platform/ad/suspend/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/m;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, Lcom/xingluo/platform/ad/f/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/m;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->downloadApk(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V
    invoke-static {v1, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$0(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V

    :cond_0
    return-void
.end method
