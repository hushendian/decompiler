.class Lcom/xingluo/single/update/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/single/update/listener/b;


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

.field private final synthetic b:Landroid/widget/TextView;

.field private final synthetic c:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/activity/d;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    iput-object p2, p0, Lcom/xingluo/single/update/activity/d;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/xingluo/single/update/activity/d;->c:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/single/update/activity/d;)Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/activity/d;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xingluo/single/update/AppInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/single/update/activity/d;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    new-instance v1, Lcom/xingluo/single/update/activity/e;

    iget-object v2, p0, Lcom/xingluo/single/update/activity/d;->b:Landroid/widget/TextView;

    invoke-direct {v1, p0, p1, v2}, Lcom/xingluo/single/update/activity/e;-><init>(Lcom/xingluo/single/update/activity/d;Lcom/xingluo/single/update/AppInfo;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xingluo/single/update/AppInfo;JJ)V
    .locals 10

    iget-object v9, p0, Lcom/xingluo/single/update/activity/d;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    new-instance v0, Lcom/xingluo/single/update/activity/f;

    iget-object v7, p0, Lcom/xingluo/single/update/activity/d;->b:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/xingluo/single/update/activity/d;->c:Landroid/widget/ProgressBar;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/xingluo/single/update/activity/f;-><init>(Lcom/xingluo/single/update/activity/d;Lcom/xingluo/single/update/AppInfo;JJLandroid/widget/TextView;Landroid/widget/ProgressBar;)V

    invoke-virtual {v9, v0}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xingluo/single/update/AppInfo;ZLandroid/os/Bundle;)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\u4e0b\u8f7d\u7ed3\u675f:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xingluo/single/update/AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xingluo/single/update/AppInfo;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xingluo/single/update/activity/d;->a:Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;

    new-instance v2, Lcom/xingluo/single/update/activity/g;

    iget-object v3, p0, Lcom/xingluo/single/update/activity/d;->b:Landroid/widget/TextView;

    invoke-direct {v2, p0, v3, v0}, Lcom/xingluo/single/update/activity/g;-><init>(Lcom/xingluo/single/update/activity/d;Landroid/widget/TextView;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lcom/xingluo/single/update/activity/CheckUpdateAcitivty;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
