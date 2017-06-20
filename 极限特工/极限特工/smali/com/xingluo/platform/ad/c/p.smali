.class Lcom/xingluo/platform/ad/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/widget/Button;

.field private final synthetic b:Landroid/app/Dialog;

.field private final synthetic c:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;


# direct methods
.method constructor <init>(Landroid/widget/Button;Landroid/app/Dialog;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/c/p;->a:Landroid/widget/Button;

    iput-object p2, p0, Lcom/xingluo/platform/ad/c/p;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/xingluo/platform/ad/c/p;->c:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/xingluo/platform/ad/b/a;->a()Lcom/xingluo/platform/ad/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/net/c;->c()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/p;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/p;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    const-string v0, "exit_pv"

    sget-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/xingluo/platform/gameplus/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "game"

    sget-object v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/p;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lcom/xingluo/platform/ad/f/c;->a()Lcom/xingluo/platform/ad/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/f/c;->c()V

    invoke-static {}, Lcom/xingluo/platform/ad/suspend/l;->a()Lcom/xingluo/platform/ad/suspend/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/l;->b()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/c/p;->c:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xingluo/platform/single/callback/IXLSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
