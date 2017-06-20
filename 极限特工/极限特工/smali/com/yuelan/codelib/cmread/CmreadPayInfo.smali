.class public Lcom/yuelan/codelib/cmread/CmreadPayInfo;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuyOneUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyTenUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyTwentyUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPayState()I
    .locals 1

    iget v0, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->g:I

    return v0
.end method

.method public getReadOneChapUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setBuyOneUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setBuyTenUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setBuyTwentyUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setPayState(I)V
    .locals 0

    iput p1, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->g:I

    return-void
.end method

.method public setReadOneChapUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->e:Ljava/lang/String;

    return-void
.end method
