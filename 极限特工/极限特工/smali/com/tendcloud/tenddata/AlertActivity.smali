.class public Lcom/tendcloud/tenddata/AlertActivity;
.super Landroid/app/Activity;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/AlertActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "popup"

.field public static final b:Ljava/lang/String; = "isinapp"

.field public static final c:Ljava/lang/String; = "showduration"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Landroid/webkit/WebView;

.field private f:J

.field private g:Z

.field private h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-string v0, "GameAlertActivity"

    iput-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->d:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->g:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    return-void
.end method

.method private a()Landroid/widget/RelativeLayout;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 118
    const v1, 0xffff

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 120
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 122
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;)Landroid/widget/RelativeLayout;
    .locals 4

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/AlertActivity;->a()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 99
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    .line 101
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    iget-object v2, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/AlertActivity;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/AlertActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/AlertActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/AlertActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 84
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 86
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/tendcloud/tenddata/AlertActivity$a;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/AlertActivity$a;-><init>(Lcom/tendcloud/tenddata/AlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "popup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isinapp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/AlertActivity;->g:Z

    .line 51
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->f:J

    .line 55
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/AlertActivity;->a(Lorg/json/JSONObject;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/AlertActivity;->setContentView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->h:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/AlertActivity;->b(Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    return-void
.end method
