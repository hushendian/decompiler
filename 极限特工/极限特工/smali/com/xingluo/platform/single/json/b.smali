.class public Lcom/xingluo/platform/single/json/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {}, Lcom/xingluo/platform/single/json/d;->a()Lcom/xingluo/platform/single/json/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/json/d;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/xingluo/platform/single/json/c;->b()Lcom/xingluo/platform/single/json/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/json/d;->c(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/xingluo/platform/single/json/c;->b()Lcom/xingluo/platform/single/json/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/json/d;->d(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/xingluo/platform/single/json/c;->b()Lcom/xingluo/platform/single/json/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/json/d;->e(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8d -> :sswitch_2
        0x91 -> :sswitch_3
        0xdc -> :sswitch_1
    .end sparse-switch
.end method
