.class Lcom/xingluo/platform/tsz/afinal/http/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/tsz/afinal/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/http/b$a;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/xingluo/platform/tsz/afinal/http/b$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/tsz/afinal/http/b$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/b$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/http/b$a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "nofilename"

    goto :goto_0
.end method
