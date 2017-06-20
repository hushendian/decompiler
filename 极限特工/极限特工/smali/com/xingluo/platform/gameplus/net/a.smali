.class public Lcom/xingluo/platform/gameplus/net/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/gameplus/net/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xingluo/platform/gameplus/net/a;


# instance fields
.field private b:Lcom/xingluo/platform/single/net/f;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xingluo/platform/gameplus/net/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->c:Landroid/util/SparseArray;

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->b:Lcom/xingluo/platform/single/net/f;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/gameplus/net/a;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/gameplus/net/a;->a:Lcom/xingluo/platform/gameplus/net/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/gameplus/net/a;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/net/a;-><init>()V

    sput-object v0, Lcom/xingluo/platform/gameplus/net/a;->a:Lcom/xingluo/platform/gameplus/net/a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/gameplus/net/a;->a:Lcom/xingluo/platform/gameplus/net/a;

    return-object v0
.end method

.method private a(ILcom/xingluo/platform/gameplus/net/a$a;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/gameplus/net/a$a;)I
    .locals 6

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->b:Lcom/xingluo/platform/single/net/f;

    const-string v1, "http://xlsdk-ad.xl-game.cn/sdkServer/gameplus"

    const/16 v2, 0x65

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/xingluo/platform/gameplus/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v5

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/gameplus/net/a;->d:I

    iget v0, p0, Lcom/xingluo/platform/gameplus/net/a;->d:I

    invoke-direct {p0, v0, p3}, Lcom/xingluo/platform/gameplus/net/a;->a(ILcom/xingluo/platform/gameplus/net/a$a;)V

    iget v0, p0, Lcom/xingluo/platform/gameplus/net/a;->d:I

    return v0
.end method

.method public a(Ljava/util/List;Lcom/xingluo/platform/gameplus/net/a$a;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/gameplus/mode/GPNativeApkInfo;",
            ">;",
            "Lcom/xingluo/platform/gameplus/net/a$a;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->b:Lcom/xingluo/platform/single/net/f;

    const-string v1, "http://xlsdk-ad.xl-game.cn/sdkServer/gameplus"

    const/16 v2, 0x64

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xingluo/platform/gameplus/d/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v5

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/gameplus/net/a;->d:I

    iget v0, p0, Lcom/xingluo/platform/gameplus/net/a;->d:I

    invoke-direct {p0, v0, p2}, Lcom/xingluo/platform/gameplus/net/a;->a(ILcom/xingluo/platform/gameplus/net/a$a;)V

    iget v0, p0, Lcom/xingluo/platform/gameplus/net/a;->d:I

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->b:Lcom/xingluo/platform/single/net/f;

    invoke-interface {v0, p1}, Lcom/xingluo/platform/single/net/f;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xingluo/platform/gameplus/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->b:Lcom/xingluo/platform/single/net/f;

    const-string v1, "http://xlsdk-statistics.sdk.sinraten.com/sdkServer/recommend"

    const/16 v2, 0x65

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v5

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/gameplus/net/a$a;)I
    .locals 6

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->b:Lcom/xingluo/platform/single/net/f;

    const-string v1, "http://xlsdk-ad.xl-game.cn/sdkServer/gameplus"

    const/16 v2, 0x66

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/xingluo/platform/gameplus/d/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v5

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/gameplus/net/a;->d:I

    iget v0, p0, Lcom/xingluo/platform/gameplus/net/a;->d:I

    invoke-direct {p0, v0, p3}, Lcom/xingluo/platform/gameplus/net/a;->a(ILcom/xingluo/platform/gameplus/net/a$a;)V

    iget v0, p0, Lcom/xingluo/platform/gameplus/net/a;->d:I

    return v0
.end method

.method public onDownLoadProgressCurSize(JJI)V
    .locals 0

    return-void
.end method

.method public onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V
    .locals 0

    return-void
.end method

.method public onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/net/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lcom/xingluo/platform/single/net/a/a;->g(I)V

    invoke-interface {v0, p2}, Lcom/xingluo/platform/gameplus/net/a$a;->a(Lcom/xingluo/platform/single/net/a/a;)V

    :cond_0
    invoke-direct {p0, p3}, Lcom/xingluo/platform/gameplus/net/a;->b(I)V

    return-void
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/net/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xingluo/platform/gameplus/net/a$a;->a(IIILjava/lang/String;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/xingluo/platform/gameplus/net/a;->b(I)V

    return-void
.end method
