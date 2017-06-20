.class public Lcom/xingluo/platform/single/sdk/a/c;
.super Lcom/xingluo/platform/single/json/AbstractJSONHelper;


# instance fields
.field private a:Lcom/xingluo/platform/single/util/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/single/json/AbstractJSONHelper;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sdk/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/a/c;->a:Lcom/xingluo/platform/single/util/i;

    return-void
.end method


# virtual methods
.method public doParserWithTag(ILjava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/a/c;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "SDKpay    doParserWithTag"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p2}, Lcom/xingluo/platform/single/sdk/a/a;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x90
        :pswitch_0
    .end packed-switch
.end method
