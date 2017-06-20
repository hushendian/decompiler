.class public Lcom/xingluo/platform/single/sms/pay/a/b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sms/pay/a/b$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Landroid/os/Handler;

.field a:Lcom/xingluo/platform/single/util/i;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Timer;

.field private d:Z

.field private e:I

.field private f:Lcom/xingluo/platform/single/sms/d/a;

.field private g:Landroid/telephony/SmsManager;

.field private h:Lcom/xingluo/platform/single/sms/pay/a/b$a;

.field private i:Landroid/app/PendingIntent;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/xingluo/platform/single/sms/d/a/a;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:J

.field private q:Lcom/xingluo/platform/single/order/Order;

.field private r:Lcom/xingluo/platform/single/sms/pay/c;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xingluo/platform/single/sms/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/xingluo/platform/single/pay/PayParameter;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    iput-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->c:Ljava/util/Timer;

    iput-boolean v4, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->d:Z

    const v0, 0xea60

    iput v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->e:I

    iput-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->f:Lcom/xingluo/platform/single/sms/d/a;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->l:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->m:Lcom/xingluo/platform/single/sms/d/a/a;

    iput v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->n:I

    iput-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->p:J

    iput-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->u:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->A:Z

    iput-boolean v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->B:Z

    iput v4, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->C:I

    iput v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->D:I

    const-string v0, "00"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->E:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->F:Ljava/lang/String;

    const-string v0, "01"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->G:Ljava/lang/String;

    const-string v0, "02"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->H:Ljava/lang/String;

    const-string v0, "03"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->I:Ljava/lang/String;

    const-string v0, "04"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->J:Ljava/lang/String;

    const-string v0, "05"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->K:Ljava/lang/String;

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/a/c;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/a/c;-><init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->L:Landroid/os/Handler;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->U:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/order/Order;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->q:Lcom/xingluo/platform/single/order/Order;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->S:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->s:Ljava/lang/String;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->T:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->t:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->l:Ljava/util/ArrayList;

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->R:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/d/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/sms/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->f:Lcom/xingluo/platform/single/sms/d/a;

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/pay/c;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->r:Lcom/xingluo/platform/single/sms/pay/c;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->A:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_deleteswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->B:Z

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/a/j;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/a/j;-><init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v2, "--\u8054\u5408\u652f\u4ed8\u7ed3\u679c\u5f00\u59cb\u4e0a\u62a5"

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    sget-object v3, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "paychannel"

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->v:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "--\u8054\u5408\u652f\u4ed8orderid\u4e3anull,\u65e0\u9700\u4e0a\u62a5\u670d\u52a1\u5668"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "orderid"

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "success"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msg"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0a\u62a5\u5f00\u59cb\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "paychannel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "orderid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->f:Lcom/xingluo/platform/single/sms/d/a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Lcom/xingluo/platform/single/sms/d/a;->a(ILandroid/os/Bundle;Lcom/xingluo/platform/single/sms/d/a$a;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    const-string v1, "actions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v4, Lcom/xingluo/platform/single/sms/d/a/a;

    invoke-direct {v4}, Lcom/xingluo/platform/single/sms/d/a/a;-><init>()V

    const-string v5, "act"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/single/sms/d/a/a;->a(I)V

    const-string v5, "num"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/single/sms/d/a/a;->c(Ljava/lang/String;)V

    const/4 v5, 0x1

    const-string v6, "act"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_3

    const-string v5, "waitTime"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/single/sms/d/a/a;->b(I)V

    const-string v5, "type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/single/sms/d/a/a;->c(I)V

    const-string v5, "type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v9, :cond_2

    new-instance v5, Ljava/lang/String;

    const-string v6, "msg"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/single/sms/d/a/a;->b(Ljava/lang/String;)V

    :goto_2
    const-string v5, "upnum"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/single/sms/d/a/a;->d(Ljava/lang/String;)V

    const-string v5, "act"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v9, v5, :cond_1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "info"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/single/sms/d/a/a;->a(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    const-string v5, "msg"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/single/sms/d/a/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "regular"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/single/sms/d/a/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->e()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/a/b;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/a/b;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->u:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/a/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->d:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Lcom/xingluo/platform/single/sms/pay/a/h;

    invoke-direct {v2, p0}, Lcom/xingluo/platform/single/sms/pay/a/h;-><init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "appid"

    sget-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "paychannel="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->w:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const-string v0, "paychannel"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->w:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "itemid"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amount"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    sget-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ua"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "spjd_ua"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/webkit/WebView;->layout(IIII)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "video_ua"

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imei"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/q;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imsi"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/q;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iccid"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "op"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/s;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/xingluo/platform/single/util/MNCType;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "province"

    sget-object v1, Lcom/xingluo/platform/single/util/a;->mM:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ver"

    const-string v1, "1.0"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sign"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transp"

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/f/j;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    const-string v1, ""

    const-string v0, ""

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bsc_lac"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bsc_cid"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v4, "bsc_lac"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bsc_cid"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->f:Lcom/xingluo/platform/single/sms/d/a;

    invoke-virtual {v0, v6, v3, v2}, Lcom/xingluo/platform/single/sms/d/a;->a(ILandroid/os/Bundle;Lcom/xingluo/platform/single/sms/d/a$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/a/b$a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/a/b$a;-><init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->h:Lcom/xingluo/platform/single/sms/pay/a/b$a;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->h:Lcom/xingluo/platform/single/sms/pay/a/b$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.duoku.sms.send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->i:Landroid/app/PendingIntent;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xingluo/platform/single/sms/pay/a/b;->b(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V
    .locals 7

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->g:Landroid/telephony/SmsManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->g:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->g:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->g:Landroid/telephony/SmsManager;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->g()V

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sms/pay/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "sendCode xl start"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/a/i;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/a/i;-><init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    sget-object v3, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "paychannel"

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "orderid"

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "verifycode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->m:Lcom/xingluo/platform/single/sms/d/a/a;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/sms/d/a/a;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->f:Lcom/xingluo/platform/single/sms/d/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Lcom/xingluo/platform/single/sms/d/a;->a(ILandroid/os/Bundle;Lcom/xingluo/platform/single/sms/d/a$a;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->i:Landroid/app/PendingIntent;

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->m()V

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->d()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->k()V

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/xingluo/platform/single/sms/pay/a/b;)Lcom/xingluo/platform/single/order/Order;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->q:Lcom/xingluo/platform/single/order/Order;

    return-object v0
.end method

.method private d()V
    .locals 7

    const-wide/16 v5, 0xbb8

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->d:Z

    sput-boolean v3, Lcom/xingluo/platform/single/order/Order;->k:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->r:Lcom/xingluo/platform/single/sms/pay/c;

    iget-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->A:Z

    invoke-virtual {v0, v3, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(ZZ)V

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getGost()Lcom/xingluo/platform/single/net/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/net/a/c;->e(Z)V

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->C:I

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/sms/d/a/a;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/d/a/a;->c()I

    move-result v1

    iput v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->z:I

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/d/a/a;->g()I

    move-result v1

    iput v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->x:I

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/d/a/a;->h()I

    move-result v1

    iput v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->y:I

    iget v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->z:I

    packed-switch v1, :pswitch_data_0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->k()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/d/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/d/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/d/a/a;->g()I

    move-result v3

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/d/a/a;->h()I

    move-result v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_1
    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->m:Lcom/xingluo/platform/single/sms/d/a/a;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->L:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->m:Lcom/xingluo/platform/single/sms/d/a/a;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->L:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/xingluo/platform/single/sms/pay/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->w:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/xingluo/platform/single/sms/pay/a/b;)Lcom/xingluo/platform/single/sms/pay/c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->r:Lcom/xingluo/platform/single/sms/pay/c;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->ISINPUT:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->d:Z

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->f()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getChannelNeedPhone()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getChannelNeedPhone()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "order.getChannel===="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " is XLPhoneNoFromNet---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->q:Lcom/xingluo/platform/single/order/Order;

    new-instance v3, Lcom/xingluo/platform/single/sms/pay/a/e;

    invoke-direct {v3, p0}, Lcom/xingluo/platform/single/sms/pay/a/e;-><init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    invoke-static {v1, v2, v3}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Landroid/content/Context;Lcom/xingluo/platform/single/order/Order;Lcom/xingluo/platform/single/sms/d/b$a;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    const-string v1, "input_Text_number"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xingluo/platform/single/sms/f/g;->a:I

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/a/f;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/sms/pay/a/f;-><init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/f/g;->a(Landroid/content/Context;Lcom/xingluo/platform/single/sms/c/b;)V

    return-void
.end method

.method static synthetic f(Lcom/xingluo/platform/single/sms/pay/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->A:Z

    return v0
.end method

.method static synthetic g(Lcom/xingluo/platform/single/sms/pay/a/b;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->D:I

    return v0
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->ISINPUT:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->d:Z

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->m:Lcom/xingluo/platform/single/sms/d/a/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->l()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    if-nez v0, :cond_6

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->n:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->L:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->m:Lcom/xingluo/platform/single/sms/d/a/a;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/sms/d/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_6
    iput v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->n:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xlsdk sms union keyWorld:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->j()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->A:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fdb\u884c\u9a8c\u8bc1\u7801\u5f39\u6846--->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->h()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "60S\u5185\u65e0\u77ed\u4fe1\uff0c\u901a\u77e5CP\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->r:Lcom/xingluo/platform/single/sms/pay/c;

    iget-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->A:Z

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(Z)V

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getGost()Lcom/xingluo/platform/single/net/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/net/a/c;->e(Z)V

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->D:I

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->z:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/xingluo/platform/single/sms/pay/a/b;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->z:I

    return v0
.end method

.method private h()V
    .locals 3

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->B:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->d:Z

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->i()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->D:I

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->z:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->K:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    const-string v1, "input_Text_code"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xingluo/platform/single/sms/f/g;->a:I

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/a/g;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/sms/pay/a/g;-><init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/f/g;->a(Landroid/content/Context;Lcom/xingluo/platform/single/sms/c/b;)V

    return-void
.end method

.method static synthetic j(Lcom/xingluo/platform/single/sms/pay/a/b;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->x:I

    return v0
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9a8c\u8bc1\u7801\u622a\u53d6\u6210\u529f\uff0c\u53d1\u9001\u9a8c\u8bc1\u7801\u7ed9\u670d\u52a1\u5668\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->d:Z

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GHOST_IS_SUPPORT:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->m()V

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getGost()Lcom/xingluo/platform/single/net/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/net/a/c;->e(Z)V

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/sms/pay/a/b;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->m:Lcom/xingluo/platform/single/sms/d/a/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->m:Lcom/xingluo/platform/single/sms/d/a/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->m:Lcom/xingluo/platform/single/sms/d/a/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->x:I

    iget v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->y:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->m()V

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderInfoData;

    invoke-direct {v0}, Lcom/xingluo/platform/single/item/XLOrderInfoData;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->q:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/item/XLOrderInfoData;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getGost()Lcom/xingluo/platform/single/net/a/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/net/a/c;->e(Z)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->dismissProgressDialog()V

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/e/a/a;->b()Lcom/xingluo/platform/single/pay/listener/c;

    move-result-object v1

    const/16 v2, 0xbc3

    invoke-interface {v1, v2, v0}, Lcom/xingluo/platform/single/pay/listener/c;->a(ILcom/xingluo/platform/single/item/XLOrderInfoData;)V

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->finish()V

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->d()V

    return-void
.end method

.method private l()V
    .locals 7

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "address"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "body"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "date"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "type"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "read"

    aput-object v3, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " date >  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->p:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND type = 1 AND read = 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSmsFromPhone=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->m()V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->h:Lcom/xingluo/platform/single/sms/pay/a/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->h:Lcom/xingluo/platform/single/sms/pay/a/b$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->h:Lcom/xingluo/platform/single/sms/pay/a/b$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic m(Lcom/xingluo/platform/single/sms/pay/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->d:Z

    return v0
.end method

.method static synthetic n(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/xingluo/platform/single/sms/pay/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->f()V

    return-void
.end method

.method static synthetic p(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/xingluo/platform/single/sms/pay/a/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic s(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic t(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/xingluo/platform/single/sms/pay/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->J:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->d:Z

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/a/b;->start()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->c:Ljava/util/Timer;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->c:Ljava/util/Timer;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/a/d;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/sms/pay/a/d;-><init>(Lcom/xingluo/platform/single/sms/pay/a/b;)V

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keyWorld===="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getUpnum==address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "actWaitTime=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "actType=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->o:Ljava/lang/String;

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->x:I

    iget v3, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->y:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xingluo/platform/single/sms/pay/a/b;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public c()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "content://sms/"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "deleteSMS address =="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " address = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "thread_id"

    aput-object v5, v2, v6

    const-string v5, "address"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    const-string v1, "thread_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "thread_id=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u7a7a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public run()V
    .locals 2

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->g:Landroid/telephony/SmsManager;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/a/b;->L:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "xlsdk sms union SMSUnifyPayment:act 2 start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
