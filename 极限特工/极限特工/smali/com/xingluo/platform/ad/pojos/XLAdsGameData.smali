.class public Lcom/xingluo/platform/ad/pojos/XLAdsGameData;
.super Lcom/xingluo/platform/single/net/a/a;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adsTime:I

.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;",
            ">;"
        }
    .end annotation
.end field

.field private inserts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->adsTime:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->adsTime:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->banners:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->banners:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->inserts:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->inserts:Ljava/util/List;

    return-object v0
.end method
