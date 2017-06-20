.class Lcom/xingluo/platform/ad/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/c/g;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/xingluo/platform/ad/f/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "statistics_boutique_show"

    sget-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/xingluo/platform/ad/c/a;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {v3}, Lcom/xingluo/platform/ad/c/a;->b(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/g;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/ad/c/a;->c(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/xingluo/platform/ad/c/a;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/c/g;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xingluo/platform/ad/c/g;->a:Landroid/app/Activity;

    const-string v2, "xl_payment_error_2003"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
