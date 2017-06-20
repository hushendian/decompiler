.class public Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adsGameData:Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

.field private commonGamesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;",
            ">;"
        }
    .end annotation
.end field

.field private flagDownShow:I

.field private flagLotteryDraw:I

.field private flagPointRecommend:I

.field private flagShowExitData:I

.field private hdown_gameid:Ljava/lang/String;

.field private hdown_gamename:Ljava/lang/String;

.field private hdown_url:Ljava/lang/String;

.field private mLogoInfo:Lcom/xingluo/platform/single/item/LogoInfo;

.field private moreGameUrl:Ljava/lang/String;

.field private noticeGameData:Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;

.field private pointerGameData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLPointerGameData;",
            ">;"
        }
    .end annotation
.end field

.field private suspendShowType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagPointRecommend:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagPointRecommend:I

    return-void
.end method

.method public a(Lcom/xingluo/platform/ad/pojos/XLAdsGameData;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->adsGameData:Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    return-void
.end method

.method public a(Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->noticeGameData:Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/item/LogoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->mLogoInfo:Lcom/xingluo/platform/single/item/LogoInfo;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->moreGameUrl:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->commonGamesList:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->moreGameUrl:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagShowExitData:I

    return-void
.end method

.method public b(Lcom/xingluo/platform/single/item/LogoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->mLogoInfo:Lcom/xingluo/platform/single/item/LogoInfo;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_url:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLPointerGameData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->pointerGameData:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->commonGamesList:Ljava/util/List;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->suspendShowType:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_gameid:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/ad/pojos/XLPointerGameData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->pointerGameData:Ljava/util/List;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagLotteryDraw:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_gamename:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_url:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagDownShow:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_url:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_gameid:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_gameid:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_gamename:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_gamename:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagShowExitData:I

    return v0
.end method

.method public i()Lcom/xingluo/platform/ad/pojos/XLAdsGameData;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->adsGameData:Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    return-object v0
.end method

.method public j()Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->noticeGameData:Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;

    return-object v0
.end method

.method public k()Lcom/xingluo/platform/single/item/LogoInfo;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->mLogoInfo:Lcom/xingluo/platform/single/item/LogoInfo;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_url:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_gameid:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_gamename:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->suspendShowType:I

    return v0
.end method

.method public p()Lcom/xingluo/platform/single/item/LogoInfo;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->mLogoInfo:Lcom/xingluo/platform/single/item/LogoInfo;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagLotteryDraw:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagDownShow:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XLCrossRecommendData [suspendShowType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->suspendShowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flagPointRecommend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagPointRecommend:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moreGameUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->moreGameUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commonGamesList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->commonGamesList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pointerGameData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->pointerGameData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noticeGameData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->noticeGameData:Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->mLogoInfo:Lcom/xingluo/platform/single/item/LogoInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hdown_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hdown_gameid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_gameid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hdown_gamename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->hdown_gamename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flagShowExitData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagShowExitData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flagLotteryDraw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagLotteryDraw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flagDownShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->flagDownShow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
