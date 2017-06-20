.class Lcom/xingluo/platform/single/pay/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/ui/a;->a:Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->b()Lcom/xingluo/platform/single/pay/listener/c;

    move-result-object v0

    const/16 v1, 0xbc6

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xingluo/platform/single/pay/listener/c;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/ui/a;->a:Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->finish()V

    return-void
.end method
