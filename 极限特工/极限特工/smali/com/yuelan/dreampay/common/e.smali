.class final Lcom/yuelan/dreampay/common/e;
.super Landroid/os/Handler;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/common/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yuelan/dreampay/common/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yuelan/dreampay/common/e;->c:Ljava/util/Map;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/yuelan/dreampay/common/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yuelan/dreampay/common/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/yuelan/dreampay/date/ConFigFile;->Url_Main_ADSTS:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/api/showStsapi4ad.do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/common/e;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/yuelan/dreampay/common/CacheHelper;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
