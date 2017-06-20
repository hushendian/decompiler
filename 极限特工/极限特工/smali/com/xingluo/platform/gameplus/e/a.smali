.class public Lcom/xingluo/platform/gameplus/e/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xingluo/platform/gameplus/net/a;->a()Lcom/xingluo/platform/gameplus/net/a;

    move-result-object v0

    new-instance v1, Lcom/xingluo/platform/gameplus/e/b;

    invoke-direct {v1}, Lcom/xingluo/platform/gameplus/e/b;-><init>()V

    invoke-virtual {v0, p0, p1, v1}, Lcom/xingluo/platform/gameplus/net/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/gameplus/net/a$a;)I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/gameplus/net/a;->a()Lcom/xingluo/platform/gameplus/net/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xingluo/platform/gameplus/net/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xingluo/platform/gameplus/net/a;->a()Lcom/xingluo/platform/gameplus/net/a;

    move-result-object v0

    new-instance v1, Lcom/xingluo/platform/gameplus/e/c;

    invoke-direct {v1}, Lcom/xingluo/platform/gameplus/e/c;-><init>()V

    invoke-virtual {v0, p0, p1, v1}, Lcom/xingluo/platform/gameplus/net/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/gameplus/net/a$a;)I

    return-void
.end method
