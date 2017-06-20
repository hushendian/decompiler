.class Lcom/xingluo/single/update/activity/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/activity/d;

.field private final synthetic b:Lcom/xingluo/single/update/AppInfo;

.field private final synthetic c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/xingluo/single/update/activity/d;Lcom/xingluo/single/update/AppInfo;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/activity/e;->a:Lcom/xingluo/single/update/activity/d;

    iput-object p2, p0, Lcom/xingluo/single/update/activity/e;->b:Lcom/xingluo/single/update/AppInfo;

    iput-object p3, p0, Lcom/xingluo/single/update/activity/e;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\u4e0b\u8f7d\u5f00\u59cb\uff1a"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/e;->b:Lcom/xingluo/single/update/AppInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xingluo/single/update/activity/e;->b:Lcom/xingluo/single/update/AppInfo;

    invoke-virtual {v2}, Lcom/xingluo/single/update/AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/single/update/activity/e;->b:Lcom/xingluo/single/update/AppInfo;

    invoke-virtual {v2}, Lcom/xingluo/single/update/AppInfo;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/single/update/activity/e;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
