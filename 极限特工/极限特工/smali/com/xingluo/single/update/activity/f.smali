.class Lcom/xingluo/single/update/activity/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xingluo/single/update/activity/d;

.field private final synthetic b:Lcom/xingluo/single/update/AppInfo;

.field private final synthetic c:J

.field private final synthetic d:J

.field private final synthetic e:Landroid/widget/TextView;

.field private final synthetic f:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/xingluo/single/update/activity/d;Lcom/xingluo/single/update/AppInfo;JJLandroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/activity/f;->a:Lcom/xingluo/single/update/activity/d;

    iput-object p2, p0, Lcom/xingluo/single/update/activity/f;->b:Lcom/xingluo/single/update/AppInfo;

    iput-wide p3, p0, Lcom/xingluo/single/update/activity/f;->c:J

    iput-wide p5, p0, Lcom/xingluo/single/update/activity/f;->d:J

    iput-object p7, p0, Lcom/xingluo/single/update/activity/f;->e:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/xingluo/single/update/activity/f;->f:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\u4e0b\u8f7d\u7248\u672c:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/f;->b:Lcom/xingluo/single/update/AppInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xingluo/single/update/activity/f;->b:Lcom/xingluo/single/update/AppInfo;

    invoke-virtual {v2}, Lcom/xingluo/single/update/AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/single/update/activity/f;->b:Lcom/xingluo/single/update/AppInfo;

    invoke-virtual {v2}, Lcom/xingluo/single/update/AppInfo;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xingluo/single/update/activity/f;->c:J

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/xingluo/single/update/activity/f;->d:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xingluo/single/update/activity/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/f;->f:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lcom/xingluo/single/update/activity/f;->d:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/xingluo/single/update/activity/f;->f:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lcom/xingluo/single/update/activity/f;->c:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
