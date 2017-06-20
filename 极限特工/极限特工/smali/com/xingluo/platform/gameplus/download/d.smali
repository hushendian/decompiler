.class public Lcom/xingluo/platform/gameplus/download/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/mode/AidlListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/xingluo/platform/tsz/afinal/d;

.field private e:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/gameplus/download/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/xingluo/platform/tsz/afinal/http/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xingluo/platform/tsz/afinal/http/c",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/TreeMap;Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/gameplus/download/d;",
            ">;",
            "Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/d;

    invoke-direct {v0}, Lcom/xingluo/platform/tsz/afinal/d;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->d:Lcom/xingluo/platform/tsz/afinal/d;

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/d;->e:Ljava/util/TreeMap;

    iput-object p2, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    iput-object p3, p0, Lcom/xingluo/platform/gameplus/download/d;->g:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/gameplus/download/d;)Ljava/util/TreeMap;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->e:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic b(Lcom/xingluo/platform/gameplus/download/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    if-eqz v0, :cond_0

    const-string v0, "tim"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d\uff0d\u300b\u300b\u300b"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->d:Lcom/xingluo/platform/tsz/afinal/d;

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->s()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/xingluo/platform/gameplus/download/e;

    invoke-direct {v4, p0}, Lcom/xingluo/platform/gameplus/download/e;-><init>(Lcom/xingluo/platform/gameplus/download/d;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xingluo/platform/tsz/afinal/d;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/xingluo/platform/tsz/afinal/http/a;)Lcom/xingluo/platform/tsz/afinal/http/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->f:Lcom/xingluo/platform/tsz/afinal/http/c;

    :goto_0
    return-void

    :cond_0
    const-string v0, "tim"

    const-string v1, "appinfo == null"

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/utils/j;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/xingluo/platform/gameplus/mode/AidlListener;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->a(I)V

    invoke-virtual {p1}, Lcom/xingluo/platform/gameplus/mode/AidlListener;->a()Lcom/xingluo/platform/gameplus/service/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-interface {v0, v1}, Lcom/xingluo/platform/gameplus/service/d;->a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/gameplus/download/d;->b(Lcom/xingluo/platform/gameplus/mode/AidlListener;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->f:Lcom/xingluo/platform/tsz/afinal/http/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->f:Lcom/xingluo/platform/tsz/afinal/http/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/tsz/afinal/http/c;->i()V

    :cond_0
    return-void
.end method

.method public b(Lcom/xingluo/platform/gameplus/mode/AidlListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xingluo/platform/gameplus/download/d;->b:Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    invoke-virtual {v2}, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->h()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
