.class Lcom/xingluo/platform/single/third/activity/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    invoke-static {v0, p2}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->access$0(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    # getter for: Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->urlComment:Ljava/lang/String;
    invoke-static {v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->access$1(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    # invokes: Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->access$5(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    invoke-static {v0, p2}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->access$0(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    # getter for: Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->urlComment:Ljava/lang/String;
    invoke-static {v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->access$1(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "success=1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    # invokes: Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->paySuccessCallback()V
    invoke-static {v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->access$2(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V

    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    const-string v1, "\u652f\u4ed8\u5b89\u5168\u626b\u63cf\u4e2d..."

    # invokes: Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->access$4(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "success=0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    # invokes: Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->payFailCallback()V
    invoke-static {v0}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->access$3(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "heepay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Error"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    const-string v2, "\u652f\u4ed8\u53c2\u6570\u9519\u8bef\uff0c\u8bf7\u6838\u5bf9\u91d1\u989d\uff01"

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/util/v;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->finish()V

    :cond_0
    const-string v1, "http:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    invoke-static {v1, p2}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->access$0(Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/third/activity/b;->a:Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;

    invoke-virtual {v2, v1}, Lcom/xingluo/platform/single/third/activity/XLWebPayViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
