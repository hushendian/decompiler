.class Lcom/xingluo/platform/single/pay/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/pay/a/a;

.field private final synthetic b:I

.field private final synthetic c:Lcom/xingluo/platform/single/item/XLOrderInfoData;

.field private final synthetic d:Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/pay/a/a;ILcom/xingluo/platform/single/item/XLOrderInfoData;Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/a/b;->a:Lcom/xingluo/platform/single/pay/a/a;

    iput p2, p0, Lcom/xingluo/platform/single/pay/a/b;->b:I

    iput-object p3, p0, Lcom/xingluo/platform/single/pay/a/b;->c:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    iput-object p4, p0, Lcom/xingluo/platform/single/pay/a/b;->d:Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    iget v1, p0, Lcom/xingluo/platform/single/pay/a/b;->b:I

    iget-object v2, p0, Lcom/xingluo/platform/single/pay/a/b;->c:Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/json/a;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/a/b;->a:Lcom/xingluo/platform/single/pay/a/a;

    invoke-static {v1}, Lcom/xingluo/platform/single/pay/a/a;->a(Lcom/xingluo/platform/single/pay/a/a;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/a/b;->d:Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->finish()V

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/a/b;->a:Lcom/xingluo/platform/single/pay/a/a;

    invoke-static {v1}, Lcom/xingluo/platform/single/pay/a/a;->b(Lcom/xingluo/platform/single/pay/a/a;)Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    return-void
.end method
