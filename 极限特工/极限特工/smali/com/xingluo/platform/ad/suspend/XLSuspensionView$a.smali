.class Lcom/xingluo/platform/ad/suspend/XLSuspensionView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/suspend/XLSuspensionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

.field private b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V
    .locals 1

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    iput-object p2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$a;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$a;->b:Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    const/4 v2, 0x1

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->downloadApk(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V
    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$11(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    return-void
.end method
