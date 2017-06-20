.class public Lcom/xingluo/platform/single/sms/b/b;
.super Lcom/xingluo/platform/single/json/AbstractJSONHelper;


# instance fields
.field private a:Lcom/xingluo/platform/single/sms/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/json/AbstractJSONHelper;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xingluo/platform/single/sms/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/json/AbstractJSONHelper;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/b/b;->a:Lcom/xingluo/platform/single/sms/c/c;

    return-void
.end method


# virtual methods
.method public doParserWithTag(ILjava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x91

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/sms/b/d;->a()Lcom/xingluo/platform/single/sms/b/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xingluo/platform/single/sms/b/d;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v1, Lcom/xingluo/platform/single/sms/d/a;->h:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/b/b;->a:Lcom/xingluo/platform/single/sms/c/c;

    invoke-interface {v1, p2}, Lcom/xingluo/platform/single/sms/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/xingluo/platform/single/sms/d/b;->c:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/b/b;->a:Lcom/xingluo/platform/single/sms/c/c;

    invoke-interface {v1, p2}, Lcom/xingluo/platform/single/sms/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xingluo/platform/single/sms/b/b;->a:Lcom/xingluo/platform/single/sms/c/c;

    invoke-interface {v1, p2}, Lcom/xingluo/platform/single/sms/c/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
