.class public Lcom/xingluo/platform/gameplus/d/i;
.super Lcom/xingluo/platform/single/json/AbstractJSONHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/json/AbstractJSONHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public doParserWithTag(ILjava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {p2}, Lcom/xingluo/platform/gameplus/d/b;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {p2}, Lcom/xingluo/platform/gameplus/d/b;->c(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {p2}, Lcom/xingluo/platform/gameplus/d/b;->d(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {p2}, Lcom/xingluo/platform/gameplus/d/b;->b(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_2
        0x2e -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
    .end sparse-switch
.end method
