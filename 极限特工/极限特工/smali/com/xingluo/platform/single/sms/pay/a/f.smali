.class Lcom/xingluo/platform/single/sms/pay/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/c/b;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/a/b;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/f;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/f;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->c(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/f;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/f;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->g(Lcom/xingluo/platform/single/sms/pay/a/b;)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/f;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->p(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 3

    invoke-static {p1}, Lcom/xingluo/platform/single/sms/f/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/f;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    const-string v1, "+86"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/f;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Lcom/xingluo/platform/single/sms/pay/a/b;Z)V

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/f;->a:Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->q(Lcom/xingluo/platform/single/sms/pay/a/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/v;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
