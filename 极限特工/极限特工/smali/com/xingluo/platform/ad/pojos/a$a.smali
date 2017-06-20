.class Lcom/xingluo/platform/ad/pojos/a$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/ad/pojos/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/ad/pojos/a;


# direct methods
.method private constructor <init>(Lcom/xingluo/platform/ad/pojos/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/a$a;->a:Lcom/xingluo/platform/ad/pojos/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/ad/pojos/a;Lcom/xingluo/platform/ad/pojos/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/pojos/a$a;-><init>(Lcom/xingluo/platform/ad/pojos/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/a$a;->a:Lcom/xingluo/platform/ad/pojos/a;

    invoke-static {v0}, Lcom/xingluo/platform/ad/pojos/a;->e(Lcom/xingluo/platform/ad/pojos/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
