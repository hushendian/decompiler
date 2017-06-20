.class Lcom/xingluo/platform/gameplus/utils/a;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Lcom/xingluo/platform/gameplus/utils/ApkUtil$b;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/gameplus/utils/ApkUtil$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/utils/a;->a:Lcom/xingluo/platform/gameplus/utils/ApkUtil$b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xingluo/platform/gameplus/utils/ApkUtil;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/utils/a;->a:Lcom/xingluo/platform/gameplus/utils/ApkUtil$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/utils/a;->a:Lcom/xingluo/platform/gameplus/utils/ApkUtil$b;

    invoke-interface {v1, v0}, Lcom/xingluo/platform/gameplus/utils/ApkUtil$b;->a(Z)V

    :cond_0
    return-void
.end method
