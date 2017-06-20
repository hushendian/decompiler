.class public Lcom/yuelan/dreampay/date/PayDetailInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/yuelan/dreampay/date/PayOtherInfo;

.field private d:I

.field private e:Lorg/json/JSONArray;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "stringNo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->a:Ljava/lang/String;

    const-string v0, "smsPreventC"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->b:Ljava/lang/String;

    const-string v0, "filterVerifSpnumber"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->h:Ljava/lang/String;

    const-string v0, "filterVerifEndContent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->i:Ljava/lang/String;

    const-string v0, "filterVerifHeadContent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->j:Ljava/lang/String;

    const-string v0, "passId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->k:Ljava/lang/String;

    const-string v0, "isOnly"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->m:Ljava/lang/String;

    const-string v0, "spId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->l:Ljava/lang/String;

    const-string v0, "smsArray"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->e:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getFilterVerifEndContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterVerifHeadContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterVerifSpnumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOnly()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getNowBu()I
    .locals 1

    iget v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->f:I

    return v0
.end method

.method public getPassId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->c:Lcom/yuelan/dreampay/date/PayOtherInfo;

    return-object v0
.end method

.method public getPaynum()I
    .locals 1

    iget v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->g:I

    return v0
.end method

.method public getPaysuccessnum()I
    .locals 1

    iget v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->d:I

    return v0
.end method

.method public getSmArray()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->e:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getSmsArray()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->e:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getSmsPreventC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getStringNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setFilterVerifEndContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setFilterVerifHeadContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setFilterVerifSpnumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public setIsOnly(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setNowBu(I)V
    .locals 0

    iput p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->f:I

    return-void
.end method

.method public setPassId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public setPayOtherInfo(Lcom/yuelan/dreampay/date/PayOtherInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->c:Lcom/yuelan/dreampay/date/PayOtherInfo;

    return-void
.end method

.method public setPaynum(I)V
    .locals 0

    iput p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->g:I

    return-void
.end method

.method public setPaysuccessnum(I)V
    .locals 0

    iput p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->d:I

    return-void
.end method

.method public setSmArray(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->e:Lorg/json/JSONArray;

    return-void
.end method

.method public setSmsArray(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->e:Lorg/json/JSONArray;

    return-void
.end method

.method public setSmsPreventC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setSpId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public setStringNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayDetailInfo;->a:Ljava/lang/String;

    return-void
.end method
