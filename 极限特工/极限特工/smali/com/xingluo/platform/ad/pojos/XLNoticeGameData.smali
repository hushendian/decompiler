.class public Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;
.super Lcom/xingluo/platform/single/net/a/a;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private an_apkname:Ljava/lang/String;

.field private an_apksize:Ljava/lang/String;

.field private an_gdl:Ljava/lang/String;

.field private an_gid:Ljava/lang/String;

.field private an_gname:Ljava/lang/String;

.field private an_img:Ljava/lang/String;

.field private an_lottery:I

.field private an_text:Ljava/lang/String;

.field private an_type:I

.field private dldesc:Ljava/lang/String;

.field private gameDownloadType:I

.field private hdown_apkname:Ljava/lang/String;

.field private hdown_flag:I

.field private packagename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->gameDownloadType:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->gameDownloadType:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_text:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_type:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_type:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_img:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_text:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->hdown_flag:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_gid:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_img:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_lottery:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_gname:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_gid:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_gdl:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_gname:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_apkname:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_gdl:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_apksize:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_apkname:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->hdown_apkname:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_apksize:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->dldesc:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->hdown_flag:I

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->packagename:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->hdown_apkname:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->dldesc:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->an_lottery:I

    return v0
.end method
