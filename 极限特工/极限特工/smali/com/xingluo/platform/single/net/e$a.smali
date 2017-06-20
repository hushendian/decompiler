.class final Lcom/xingluo/platform/single/net/e$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/net/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/net/e;


# direct methods
.method private constructor <init>(Lcom/xingluo/platform/single/net/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/single/net/e;Lcom/xingluo/platform/single/net/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/net/e$a;-><init>(Lcom/xingluo/platform/single/net/e;)V

    return-void
.end method

.method private a(Lcom/xingluo/platform/single/net/NetMessage;)V
    .locals 9

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->f()I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;I)Ljava/util/Map$Entry;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/INetListener;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/single/net/a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xingluo/platform/single/net/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->b()Lcom/xingluo/platform/single/net/a/a;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-static {v5}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;)Lcom/xingluo/platform/single/util/i;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response data res = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/xingluo/platform/single/net/a/a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    :cond_0
    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->a()I

    move-result v4

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/a;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/xingluo/platform/single/net/INetListener;->onNetResponseErr(IIILjava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/a;

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;Lcom/xingluo/platform/single/net/a;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v4}, Lcom/xingluo/platform/single/net/a/a;->o()I

    move-result v5

    iget-object v6, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-static {v6}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;)Lcom/xingluo/platform/single/util/i;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "response data isn\'t nil and errcode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,requestTag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/a;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    if-nez v5, :cond_4

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/a;->b()I

    move-result v1

    invoke-interface {v0, v1, v4, v2}, Lcom/xingluo/platform/single/net/INetListener;->onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/a;->b()I

    move-result v1

    invoke-virtual {v4}, Lcom/xingluo/platform/single/net/a/a;->p()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v5, v4}, Lcom/xingluo/platform/single/net/INetListener;->onNetResponseErr(IIILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/xingluo/platform/single/net/e$a;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->a()[Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->f:Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->e:Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->d:Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->c:Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->b:Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->a:Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/xingluo/platform/single/net/e$a;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private b(Lcom/xingluo/platform/single/net/NetMessage;)V
    .locals 6

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->f()I

    move-result v2

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-static {v0, v2}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;I)Ljava/util/Map$Entry;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/INetListener;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xingluo/platform/single/net/a;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/a;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/xingluo/platform/single/net/INetListener;->onNetResponseErr(IIILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/a;

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;Lcom/xingluo/platform/single/net/a;)V

    :cond_1
    return-void
.end method

.method private c(Lcom/xingluo/platform/single/net/NetMessage;)V
    .locals 4

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->f()I

    move-result v1

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;I)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/INetListener;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;->d:Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;

    invoke-interface {v0, v3, v1}, Lcom/xingluo/platform/single/net/INetListener;->onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/a;

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;Lcom/xingluo/platform/single/net/a;)V

    :cond_1
    return-void
.end method

.method private d(Lcom/xingluo/platform/single/net/NetMessage;)V
    .locals 6

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->f()I

    move-result v5

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-static {v0, v5}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;I)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/INetListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->d()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->e()J

    move-result-wide v3

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/INetListener;->onDownLoadProgressCurSize(JJI)V

    :cond_0
    return-void
.end method

.method private e(Lcom/xingluo/platform/single/net/NetMessage;)V
    .locals 4

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->f()I

    move-result v1

    iget-object v0, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;I)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/INetListener;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;->c:Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;

    invoke-interface {v0, v3, v1}, Lcom/xingluo/platform/single/net/INetListener;->onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/a;

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;Lcom/xingluo/platform/single/net/a;)V

    :cond_1
    return-void
.end method

.method private f(Lcom/xingluo/platform/single/net/NetMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/xingluo/platform/single/net/NetMessage;->f()I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;I)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/net/a;

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;Lcom/xingluo/platform/single/net/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/xingluo/platform/single/net/NetMessage;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xingluo/platform/single/net/NetMessage;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/NetMessage;->c()Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/net/e$a;->a:Lcom/xingluo/platform/single/net/e;

    invoke-static {v2}, Lcom/xingluo/platform/single/net/e;->a(Lcom/xingluo/platform/single/net/e;)Lcom/xingluo/platform/single/util/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "metmsgtype = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/e$a;->a()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/net/e$a;->a(Lcom/xingluo/platform/single/net/NetMessage;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/net/e$a;->b(Lcom/xingluo/platform/single/net/NetMessage;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/net/e$a;->d(Lcom/xingluo/platform/single/net/NetMessage;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/net/e$a;->c(Lcom/xingluo/platform/single/net/NetMessage;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/net/e$a;->e(Lcom/xingluo/platform/single/net/NetMessage;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/net/e$a;->f(Lcom/xingluo/platform/single/net/NetMessage;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
