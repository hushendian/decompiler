.class Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/suspend/XLSuspensionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;


# direct methods
.method private constructor <init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    const/4 v2, 0x0

    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    if-lez p4, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isComputeHeight:Z
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$12(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    move v3, v2

    move v1, v2

    :goto_0
    if-lt v3, v6, :cond_2

    move v0, v1

    :goto_1
    if-lt v0, v5, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-static {v0, v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$13(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isComputeHeight:Z
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$12(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->addFooterView(Landroid/widget/AbsListView;)V
    invoke-static {v0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$14(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Landroid/widget/AbsListView;)V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->addFooterView(Landroid/widget/AbsListView;)V
    invoke-static {v0, p1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$14(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Landroid/widget/AbsListView;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionFlag:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$15(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->lastPosition1:I
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$16(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData1:Z
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$17(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u52a0\u8f7d\u5168\u90e8\u6700\u65b0\u6e38\u620f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    sget v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum1:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum1:I

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v1

    sget v2, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    invoke-virtual {v1, v3, v2}, Lcom/xingluo/platform/gameplus/d/d;->a(II)Lcom/xingluo/platform/gameplus/d/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->netListener:Lcom/xingluo/platform/single/net/INetListener;
    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$18(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/single/net/INetListener;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xingluo/platform/single/net/f;->a(Lcom/xingluo/platform/single/json/AbstractJsonBuilder;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mLog:Lcom/xingluo/platform/single/util/i;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$1(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "---is last item position ---"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$19(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;I)V

    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->lastPosition2:I
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$20(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->isAllData2:Z
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$21(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u52a0\u8f7d\u5168\u90e8\u70ed\u95e8\u6e38\u620f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v1

    sget v2, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    invoke-virtual {v1, v3, v2}, Lcom/xingluo/platform/gameplus/d/d;->a(II)Lcom/xingluo/platform/gameplus/d/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$b;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->netListener:Lcom/xingluo/platform/single/net/INetListener;
    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$18(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/single/net/INetListener;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xingluo/platform/single/net/f;->a(Lcom/xingluo/platform/single/json/AbstractJsonBuilder;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
