.class Lcom/xingluo/platform/ad/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    if-lez p4, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/xingluo/platform/ad/c/a;->a(Landroid/widget/AbsListView;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    sget-object v2, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u5df2\u52a0\u8f7d\u5168\u90e8\u70ed\u95e8\u6e38\u620f"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->d()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->b()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/xingluo/platform/ad/c/a;->a(Landroid/widget/AbsListView;)V

    sget-object v2, Lcom/xingluo/platform/ad/c/a;->c:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-static {v2}, Lcom/xingluo/platform/ad/c/a;->a(I)V

    :cond_3
    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->e()Lcom/xingluo/platform/single/util/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--lastPosition = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ===list.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->f()I

    move-result v2

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    move v0, v1

    :cond_4
    if-eqz v0, :cond_0

    sget v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v2

    sget v3, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    invoke-virtual {v2, v1, v3}, Lcom/xingluo/platform/gameplus/d/d;->a(II)Lcom/xingluo/platform/gameplus/d/f;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->h()Lcom/xingluo/platform/single/net/INetListener;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xingluo/platform/single/net/f;->a(Lcom/xingluo/platform/single/json/AbstractJsonBuilder;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
