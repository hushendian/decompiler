.class Lcom/xingluo/platform/ad/suspend/l$b;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/suspend/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/suspend/l;


# direct methods
.method private constructor <init>(Lcom/xingluo/platform/ad/suspend/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/ad/suspend/l;Lcom/xingluo/platform/ad/suspend/l$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/l$b;-><init>(Lcom/xingluo/platform/ad/suspend/l;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/l;->a(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/l;->a(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v2}, Lcom/xingluo/platform/ad/suspend/l;->a(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xingluo/platform/ad/suspend/l;->a(Lcom/xingluo/platform/ad/suspend/l;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/l;->b(Lcom/xingluo/platform/ad/suspend/l;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/l;->a(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/l;->b(Lcom/xingluo/platform/ad/suspend/l;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/l;->b(Lcom/xingluo/platform/ad/suspend/l;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v1}, Lcom/xingluo/platform/ad/suspend/l;->a(Lcom/xingluo/platform/ad/suspend/l;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/l$b;->a:Lcom/xingluo/platform/ad/suspend/l;

    invoke-static {v0}, Lcom/xingluo/platform/ad/suspend/l;->b(Lcom/xingluo/platform/ad/suspend/l;)Lcom/xingluo/platform/ad/suspend/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/ad/suspend/s;->c()V

    goto :goto_0
.end method
