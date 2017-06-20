.class Lcom/xingluo/platform/ad/suspend/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/p;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/p;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionFlag:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/p;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadSuspension2:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$5(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/p;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadSuspension2:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$5(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/p;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # getter for: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->loadSuspension2:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$5(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/p;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iput v1, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionFlag:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/p;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    iget-object v0, v0, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->suspensionLv2:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/p;->a:Lcom/xingluo/platform/ad/suspend/XLSuspensionView;

    # invokes: Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->changeBtColor(I)V
    invoke-static {v0, v1}, Lcom/xingluo/platform/ad/suspend/XLSuspensionView;->access$22(Lcom/xingluo/platform/ad/suspend/XLSuspensionView;I)V

    :cond_1
    return-void
.end method
