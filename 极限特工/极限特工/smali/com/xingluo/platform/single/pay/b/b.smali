.class Lcom/xingluo/platform/single/pay/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/pay/b/a;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/pay/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/b/b;->a:Lcom/xingluo/platform/single/pay/b/a;

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

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/b/b;->a:Lcom/xingluo/platform/single/pay/b/a;

    invoke-static {v1}, Lcom/xingluo/platform/single/pay/b/a;->a(Lcom/xingluo/platform/single/pay/b/a;)Lcom/xingluo/platform/single/pay/ViewType;

    move-result-object v1

    sget-object v2, Lcom/xingluo/platform/single/pay/EventType;->d:Lcom/xingluo/platform/single/pay/EventType;

    iget-object v3, p0, Lcom/xingluo/platform/single/pay/b/b;->a:Lcom/xingluo/platform/single/pay/b/a;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/pay/b/a;->i()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/pay/EventType;I)V

    return-void
.end method
