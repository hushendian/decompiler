.class Lcom/xingluo/platform/gameplus/download/i;
.super Landroid/os/HandlerThread;


# instance fields
.field private final synthetic a:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

.field private final synthetic b:Lcom/xingluo/platform/gameplus/download/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Lcom/xingluo/platform/gameplus/download/a;)V
    .locals 0

    iput-object p2, p0, Lcom/xingluo/platform/gameplus/download/i;->a:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    iput-object p3, p0, Lcom/xingluo/platform/gameplus/download/i;->b:Lcom/xingluo/platform/gameplus/download/a;

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/i;->a:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/download/i;->b:Lcom/xingluo/platform/gameplus/download/a;

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/download/h;->b(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Lcom/xingluo/platform/gameplus/download/a;)V

    return-void
.end method
