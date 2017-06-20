.class public Lcom/yuelan/dreampay/date/PayOtherInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


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
    const-string v0, "money"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->a:Ljava/lang/String;

    const-string v0, "productName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->b:Ljava/lang/String;

    const-string v0, "payDetail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->c:Ljava/lang/String;

    const-string v0, "orderDetail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->d:Ljava/lang/String;

    const-string v0, "channelName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->f:Ljava/lang/String;

    const-string v0, "spName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->e:Ljava/lang/String;

    const-string v0, "payclass"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->g:Ljava/lang/String;

    const-string v0, "payAlert"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->h:Ljava/lang/String;

    const-string v0, "showTheme"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->i:Ljava/lang/String;

    const-string v0, "closeTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->j:Ljava/lang/String;

    const-string v0, "yys"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->r:Ljava/lang/String;

    const-string v0, "showSrc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "showSrc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "img1"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->k:Ljava/lang/String;

    const-string v1, "img2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->l:Ljava/lang/String;

    const-string v1, "img3"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->m:Ljava/lang/String;

    const-string v1, "img4"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->n:Ljava/lang/String;

    const-string v1, "img5"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->o:Ljava/lang/String;

    const-string v1, "fontColor1"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->p:Ljava/lang/String;

    const-string v1, "fontColor2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->q:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getImg1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getImg2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getImg3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getImg4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getImg5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPayAlert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPayClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPayDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getSpName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getYys()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setCloseTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setFontColor1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->p:Ljava/lang/String;

    return-void
.end method

.method public setFontColor2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->q:Ljava/lang/String;

    return-void
.end method

.method public setImg1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public setImg2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public setImg3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setImg4(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public setImg5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->o:Ljava/lang/String;

    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setOrderDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setPayAlert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public setPayClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setPayDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setShowTheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setSpName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setYys(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/date/PayOtherInfo;->r:Ljava/lang/String;

    return-void
.end method
