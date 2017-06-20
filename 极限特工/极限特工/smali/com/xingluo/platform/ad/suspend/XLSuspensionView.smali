.class public Lcom/xingluo/platform/ad/suspend/XLSuspensionView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/ad/suspend/XLSuspensionView$a;,
        Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;,
        Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;,
        Lcom/xingluo/platform/ad/suspend/XLSuspensionView$d;,
        Lcom/xingluo/platform/ad/suspend/XLSuspensionView$e;,
        Lcom/xingluo/platform/ad/suspend/XLSuspensionView$f;
    }
.end annotation


# static fields
.field private static final GAME_ITEM_LAYOUT_STRING:Ljava/lang/String; = "xl_recommend_game_item"

.field private static final SUSPENSION_WINDOW_GOOD:I = 0x1

.field private static final SUSPENSION_WINDOW_NEW:I

.field public static mPageNum1:I

.field public static mPageNum2:I

.field public static suspensionList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;",
            ">;"
        }
    .end annotation
.end field

.field public static suspensionList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final SUSPENSION_CIRCLE_NORMAL:Ljava/lang/String;

.field private final SUSPENSION_CIRCLE_SELECTED:Ljava/lang/String;

.field private blue:I

.field private goodGameBt:Landroid/widget/Button;

.field private isAllData1:Z

.field private isAllData2:Z

.field private isComputeHeight:Z

.field private itemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lastPosition1:I

.field private lastPosition2:I

.field loadBar:Landroid/widget/ProgressBar;

.field private loadSuspension2:Landroid/widget/LinearLayout;

.field private lvBottom:I

.field private lvHeight:I

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

.field private mInfalter:Landroid/view/LayoutInflater;

.field private mLog:Lcom/xingluo/platform/single/util/i;

.field private mPageType:I

.field private netListener:Lcom/xingluo/platform/single/net/INetListener;

.field private newGameBt:Landroid/widget/Button;

.field progressLayout:Landroid/widget/LinearLayout;

.field private suspensionAdapter:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

.field private suspensionAdapter2:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

.field protected suspensionFlag:I

.field private suspensionIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected suspensionLv:Landroid/widget/ListView;

.field protected suspensionLv2:Landroid/widget/ListView;

.field private window:Lcom/xingluo/platform/ad/suspend/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum1:I

    sput v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "xl_suspension_circle_normal"

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->SUSPENSION_CIRCLE_NORMAL:Ljava/lang/String;

    const-string v0, "xl_suspension_circle_selected"

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->SUSPENSION_CIRCLE_SELECTED:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isComputeHeight:Z

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageType:I

    iput-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/m;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/m;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionIconList:Ljava/util/List;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/n;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/n;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->netListener:Lcom/xingluo/platform/single/net/INetListener;

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-class v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mLog:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->downloadApk(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V

    return-void
.end method

.method static synthetic access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/single/util/i;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mLog:Lcom/xingluo/platform/single/util/i;

    return-object v0
.end method

.method static synthetic access$10(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->convertStr2Num(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->downloadApk(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isComputeHeight:Z

    return v0
.end method

.method static synthetic access$13(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isComputeHeight:Z

    return-void
.end method

.method static synthetic access$14(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->addFooterView(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic access$15(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->lastPosition1:I

    return-void
.end method

.method static synthetic access$16(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->lastPosition1:I

    return v0
.end method

.method static synthetic access$17(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData1:Z

    return v0
.end method

.method static synthetic access$18(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/single/net/INetListener;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->netListener:Lcom/xingluo/platform/single/net/INetListener;

    return-object v0
.end method

.method static synthetic access$19(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->lastPosition2:I

    return-void
.end method

.method static synthetic access$2(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData1:Z

    return-void
.end method

.method static synthetic access$20(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->lastPosition2:I

    return v0
.end method

.method static synthetic access$21(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData2:Z

    return v0
.end method

.method static synthetic access$22(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->changeBtColor(I)V

    return-void
.end method

.method static synthetic access$23(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadSuspension2:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$24(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionIconList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$25(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->getGameItemView(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->refreshCurrentView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData2:Z

    return-void
.end method

.method static synthetic access$5(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadSuspension2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionAdapter2:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    return-void
.end method

.method static synthetic access$7(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionAdapter2:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    return-object v0
.end method

.method static synthetic access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mInfalter:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private addFooterView(Landroid/widget/AbsListView;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionFlag:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData1:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData1:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionFlag:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData1:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData2:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData2:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData2:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private changeBtColor(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->newGameBt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v2, "xl_suspension_item_left_press"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->newGameBt:Landroid/widget/Button;

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->blue:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->goodGameBt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v2, "xl_suspension_item_right_normal"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->goodGameBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->goodGameBt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v2, "xl_suspension_item_right_press"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->goodGameBt:Landroid/widget/Button;

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->blue:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->newGameBt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v2, "xl_suspension_item_left_normal"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->newGameBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private convertStr2Num(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x2710
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v2, v0

    move v0, v1

    move-object v1, v2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private downloadApk(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->downloadApk(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    return-void
.end method

.method private downloadApk(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/f/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->window:Lcom/xingluo/platform/ad/suspend/s;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->d()V

    invoke-static {}, Lcom/xingluo/platform/ad/f/a;->a()Lcom/xingluo/platform/ad/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h()I

    move-result v6

    sget v7, Lcom/xingluo/platform/single/util/a;->iE:I

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->window:Lcom/xingluo/platform/ad/suspend/s;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/xingluo/platform/ad/f/a;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;Z)V

    if-eqz p2, :cond_1

    const-string v1, "statistics_suspend2_download"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/f/a;->b(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private footerView()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mInfalter:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v2, "xl_suspension_progress_load"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v2, "xl_loadingImageView"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private getGameItemView(Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mInfalter:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v2, "xl_recommend_game_item"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v1, "xl_recommend_game_icon"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v2, "xl_recommend_game_title"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v4, "xl_recommend_game_num_tv"

    invoke-static {v2, v4}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionIconList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method private init()V
    .locals 3

    const/16 v0, 0x1f

    const/16 v1, 0x8c

    const/16 v2, 0xf8

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->blue:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mInfalter:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->footerView()V

    return-void
.end method

.method private initSuspensionView2()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v1, "xl_suspension_new_bt"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->newGameBt:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v1, "xl_suspension_good_bt"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->goodGameBt:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->goodGameBt:Landroid/widget/Button;

    new-instance v1, Lcom/xingluo/platform/ad/suspend/o;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/ad/suspend/o;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->newGameBt:Landroid/widget/Button;

    new-instance v1, Lcom/xingluo/platform/ad/suspend/p;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/ad/suspend/p;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshCurrentView(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionFlag:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionAdapter:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionAdapter2:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private requestData()V
    .locals 4

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v1

    const/4 v2, 0x1

    sget v3, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    invoke-virtual {v1, v2, v3}, Lcom/xingluo/platform/gameplus/d/d;->a(II)Lcom/xingluo/platform/gameplus/d/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->netListener:Lcom/xingluo/platform/single/net/INetListener;

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xingluo/platform/single/net/f;->a(Lcom/xingluo/platform/single/json/AbstractJsonBuilder;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addListView(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 3

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->window:Lcom/xingluo/platform/ad/suspend/s;

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->initSuspensionView2()V

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList1:Ljava/util/List;

    sget v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SCREEN_ORIENT:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList1:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->requestData()V

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->o()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageType:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v1, "xl_suspension_item_lv"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v1, "xl_suspension_item_lv2"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    sget-object v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList1:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionAdapter:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionAdapter:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->lvHeight:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->lvBottom:I

    new-instance v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->changeBtColor(I)V

    return-void

    :cond_2
    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList1:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    :cond_3
    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->requestData()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v2, "xl_recommend_game_icon"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-static {}, Lcom/xingluo/platform/ad/f/a;->a()Lcom/xingluo/platform/ad/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h()I

    move-result v6

    sget v7, Lcom/xingluo/platform/single/util/a;->iC:I

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->window:Lcom/xingluo/platform/ad/suspend/s;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageType:I

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/xingluo/platform/ad/f/a;->a(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;ZI)V

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/f/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->init()V

    return-void
.end method

.method public setup(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v1, "xl_suspension_vp"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->o()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageType:I

    invoke-virtual {p1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v1, v3, 0x4

    rem-int/lit8 v0, v3, 0x4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int v2, v1, v0

    new-instance v0, Lcom/xingluo/platform/ad/suspend/r;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xingluo/platform/ad/suspend/r;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;IILjava/util/List;Landroid/support/v4/view/ViewPager;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/suspend/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public setup(Lcom/xingluo/platform/ad/suspend/s;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->window:Lcom/xingluo/platform/ad/suspend/s;

    iput-object p2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mData:Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;

    const-string v1, "xl_suspension_vp"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->o()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageType:I

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v1, v3, 0x4

    rem-int/lit8 v0, v3, 0x4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int v2, v1, v0

    new-instance v0, Lcom/xingluo/platform/ad/suspend/q;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xingluo/platform/ad/suspend/q;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;IILjava/util/List;Landroid/support/v4/view/ViewPager;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/suspend/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void

    :cond_1
    move v0, v6

    goto :goto_0
.end method
