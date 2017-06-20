.class Lcom/xingluo/platform/ad/suspend/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionFlag:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iput v4, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionFlag:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget v1, v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionFlag:I

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->changeBtColor(I)V
    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$22(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;I)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadSuspension2:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$5(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadSuspension2:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$5(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "xl_suspension_progress"

    invoke-static {v2, v3}, Lcom/xingluo/platform/single/util/r;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$23(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadSuspension2:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$5(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v1

    sget v2, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mPageNum2:I

    invoke-virtual {v1, v4, v2}, Lcom/xingluo/platform/gameplus/d/d;->a(II)Lcom/xingluo/platform/gameplus/d/f;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->netListener:Lcom/xingluo/platform/single/net/INetListener;
    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$18(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/single/net/INetListener;

    move-result-object v2

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xingluo/platform/single/net/f;->a(Lcom/xingluo/platform/single/json/AbstractJsonBuilder;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionAdapter2:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$7(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    new-instance v1, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    sget-object v3, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionList2:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;-><init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$6(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionAdapter2:Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$7(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Lcom/xingluo/platform/ad/suspend/XLSuspensionView$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/o;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$8(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "xl_payment_error_2003"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
