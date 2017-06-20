.class Lcom/xingluo/platform/single/sms/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/e/a;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/e/b;->a:Lcom/xingluo/platform/single/sms/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/pay/EventType;->f:Lcom/xingluo/platform/single/pay/EventType;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->updateView(Lcom/xingluo/platform/single/pay/EventType;Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/e/b;->a:Lcom/xingluo/platform/single/sms/e/a;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/e/a;->a(Lcom/xingluo/platform/single/sms/e/a;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
