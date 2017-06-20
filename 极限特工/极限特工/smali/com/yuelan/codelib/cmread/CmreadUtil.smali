.class public Lcom/yuelan/codelib/cmread/CmreadUtil;
.super Ljava/lang/Object;


# static fields
.field public static final CM_MAIN_URL_HTTP:Ljava/lang/String; = "http://wap.cmread.com"

.field public static final CM_MAIN_URL_HTTPS:Ljava/lang/String; = "https://wap.cmread.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOneChapContent(Ljava/lang/String;Landroid/content/Context;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;
    .locals 5

    new-instance v0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    invoke-direct {v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;-><init>()V

    new-instance v1, Lcom/yuelan/codelib/comm/MyPreference;

    invoke-direct {v1, p1}, Lcom/yuelan/codelib/comm/MyPreference;-><init>(Landroid/content/Context;)V

    const-string v2, "CM_Cookie"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/yuelan/codelib/comm/MyPreference;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vt=9"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&vt=9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setReadOneChapUrl(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v3}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setCode(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yuelan/codelib/cmread/CmreadUtil;->getPayState(Lcom/yuelan/codelib/cmread/CmreadPayInfo;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    invoke-virtual {v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->getPayState()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/yuelan/codelib/cmread/CmreadUtil;->parsePayUrl(Lcom/yuelan/codelib/cmread/CmreadPayInfo;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    invoke-virtual {v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->getBuyOneUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setPayState(I)V

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setContent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {v0}, Lcom/yuelan/codelib/cmread/CmreadUtil;->getPayState(Lcom/yuelan/codelib/cmread/CmreadPayInfo;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->getPayState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-string v2, "CM_Cookie"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/yuelan/codelib/comm/MyPreference;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setPayState(I)V

    goto :goto_0
.end method

.method public static getOneChapContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://wap.cmread.com/r/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/index.htm?page=1&vt=9&cm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/yuelan/codelib/cmread/CmreadUtil;->getOneChapContent(Ljava/lang/String;Landroid/content/Context;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPayState(Lcom/yuelan/codelib/cmread/CmreadPayInfo;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setContent(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setPayState(I)V

    :goto_0
    return-object p0

    :cond_0
    const-string v1, "loginSubmitUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setPayState(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, -0x4

    invoke-virtual {p0, v1}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setPayState(I)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setPayState(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getPayState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;
    .locals 3

    new-instance v0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    invoke-direct {v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://wap.cmread.com/r/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/index.htm?page=1&vt=9&cm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setCode(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yuelan/codelib/cmread/CmreadUtil;->getPayState(Lcom/yuelan/codelib/cmread/CmreadPayInfo;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parsePayUrl(Lcom/yuelan/codelib/cmread/CmreadPayInfo;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "orderUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "orderUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "http://wap.cmread.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://wap.cmread.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "amp;"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://wap.cmread.com"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setBuyOneUrl(Ljava/lang/String;)V

    :cond_1
    const-string v0, "buyTenUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "buyTenUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "http://wap.cmread.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https://wap.cmread.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "amp;"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://wap.cmread.com"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setBuyTenUrl(Ljava/lang/String;)V

    :cond_3
    const-string v0, "buyTwentyUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "buyTwentyUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "http://wap.cmread.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https://wap.cmread.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "amp;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://wap.cmread.com"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setBuyTwentyUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parsePayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;
    .locals 3

    new-instance v0, Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    invoke-direct {v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://wap.cmread.com/r/p/orderdata.jsp?bid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&vt=9&cm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setCode(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yuelan/codelib/cmread/CmreadUtil;->parsePayUrl(Lcom/yuelan/codelib/cmread/CmreadPayInfo;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static payChap(Ljava/lang/String;I)Lcom/yuelan/codelib/cmread/CmreadPayInfo;
    .locals 3

    new-instance v1, Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    invoke-direct {v1}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;-><init>()V

    invoke-static {p0}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setCode(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yuelan/codelib/cmread/CmreadUtil;->parsePayUrl(Lcom/yuelan/codelib/cmread/CmreadPayInfo;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    invoke-virtual {v1, p0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setReadOneChapUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    invoke-virtual {v1}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->getBuyOneUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->getBuyOneUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->setPayState(I)V

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    invoke-virtual {v1}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->getBuyTenUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v2, 0x14

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/yuelan/codelib/cmread/CmreadPayInfo;->getBuyTwentyUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/yuelan/codelib/cmread/CmreadUtil;->getPayState(Lcom/yuelan/codelib/cmread/CmreadPayInfo;)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    goto :goto_1
.end method

.method public static payChap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/yuelan/codelib/cmread/CmreadPayInfo;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://wap.cmread.com/r/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/index.htm?page=1&vt=9&cm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/yuelan/codelib/cmread/CmreadUtil;->payChap(Ljava/lang/String;I)Lcom/yuelan/codelib/cmread/CmreadPayInfo;

    move-result-object v0

    return-object v0
.end method
