.class public Lcom/xingluo/platform/tsz/afinal/http/a/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpEntity;Lcom/xingluo/platform/tsz/afinal/http/a/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v7, v0, [B

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_3

    if-eqz p2, :cond_2

    const/4 v5, 0x1

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/http/a/a;->a(JJZ)V

    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v7, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-long v9, v0

    add-long/2addr v3, v9

    if-eqz p2, :cond_1

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/tsz/afinal/http/a/a;->a(JJZ)V

    goto :goto_1
.end method
