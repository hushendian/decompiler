.class public Lcom/yuelan/dreampay/pay/MiLiSmsPay;
.super Ljava/lang/Object;


# static fields
.field public static Order_State:I = 0x0

.field public static final SENT_SMS_ACTION:Ljava/lang/String; = "SMS_SEND_ACTIOIN"

.field private static e:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:I

.field private static m:I

.field private static n:Ljava/util/ArrayList;

.field private static o:Ljava/util/Timer;

.field private static p:Ljava/util/TimerTask;

.field public static payListNum:I

.field private static q:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field a:I

.field private b:Landroid/app/Activity;

.field private c:Lcom/yuelan/dreampay/pay/F;

.field private d:Lcom/yuelan/dreampay/view/LoadingDialog;

.field private f:J

.field private g:J

.field private h:Lcom/yuelan/codelib/comm/MyPreference;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "1"

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->n:Ljava/util/ArrayList;

    sput v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    sput v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->Order_State:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->q:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a:I

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    new-instance v0, Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-direct {v0, p1}, Lcom/yuelan/dreampay/view/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    new-instance v0, Lcom/yuelan/codelib/comm/MyPreference;

    invoke-direct {v0, p1}, Lcom/yuelan/codelib/comm/MyPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->h:Lcom/yuelan/codelib/comm/MyPreference;

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->l:I

    return-void
.end method

.method private a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V
    .locals 5

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->getNowTimeNum()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/yuelan/dreampay/common/AppDo;->getUserBaseDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "stringNo"

    invoke-virtual {p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getStringNo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "state"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "passId"

    invoke-virtual {p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPassId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "spId"

    invoke-virtual {p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getSpId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "createTime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "yys"

    invoke-virtual {p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getYys()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isOnly"

    invoke-virtual {p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getIsOnly()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "payId"

    sget-object v2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "payCostTime"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->g:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "orderNum"

    sget-object v2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getStringNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u589e\u52a0\u4e00\u6b21"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getStringNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 2

    new-instance v0, Lcom/yuelan/dreampay/pay/F;

    invoke-direct {v0, p0, p2, p3}, Lcom/yuelan/dreampay/pay/F;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c:Lcom/yuelan/dreampay/pay/F;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c:Lcom/yuelan/dreampay/pay/F;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private a(Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 4

    const/4 v1, 0x1

    const/16 v3, 0x2328

    if-ne p2, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->g()V

    if-eqz v0, :cond_4

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->l:I

    sget v2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->m:I

    if-ne v0, v2, :cond_1

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    invoke-interface {p3, v3}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    sget-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e:Ljava/lang/String;

    sget-object v2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    invoke-static {v0, v3, v1, p1, v2}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->k:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->show(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/yuelan/dreampay/pay/s;

    invoke-direct {v0, p0, p3}, Lcom/yuelan/dreampay/pay/s;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yuelan/dreampay/pay/t;

    invoke-direct {v2, p0, v0}, Lcom/yuelan/dreampay/pay/t;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_3
    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    invoke-interface {p3, v3}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    sget-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e:Ljava/lang/String;

    sget-object v2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    invoke-static {v0, v3, v1, p1, v2}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->k:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "==="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-----"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->m:I

    sget v2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->l:I

    if-ge v0, v2, :cond_6

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->show(Ljava/lang/String;)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "==="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->n:Ljava/util/ArrayList;

    sget v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->m:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-direct {p0, v0, p3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    goto/16 :goto_1

    :cond_6
    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    invoke-interface {p3, p2}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    sget-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e:Ljava/lang/String;

    sget-object v2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    invoke-static {v0, p2, v1, p1, v2}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private a(Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 8

    const/4 v1, 0x0

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->m:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->m:I

    invoke-virtual {p1, v1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->setNowBu(I)V

    invoke-virtual {p1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getSmsPreventC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/yuelan/dreampay/date/PBSmsDBH;

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/yuelan/dreampay/date/PBSmsDBH;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPassId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yuelan/dreampay/date/PBSmsDBH;->deleteFromPassId(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getSmArray()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lorg/json/JSONArray;ILcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "filterSpnumber"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "keyword"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    const-class v7, Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "com.yuelan.milipay.ShieldSmsService.add"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "phonenum"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "keyone"

    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "passid"

    invoke-virtual {p1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPassId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    const/16 v0, 0x1b5a

    invoke-direct {p0, p1, v0, p2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto :goto_2
.end method

.method private a(Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/yuelan/dreampay/pay/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/yuelan/dreampay/pay/l;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yuelan/dreampay/pay/q;

    invoke-direct {v2, p0, p3, v0}, Lcom/yuelan/dreampay/pay/q;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->h:Lcom/yuelan/codelib/comm/MyPreference;

    const-string v1, "province"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yuelan/codelib/comm/MyPreference;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "test1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u76f4\u63a5\u83b7\u53d6\u901a\u90531"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b(Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/yuelan/dreampay/pay/y;

    invoke-direct {v0, p0, p1, p2}, Lcom/yuelan/dreampay/pay/y;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    sget v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/view/LoadingDialog;->show(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/yuelan/dreampay/common/AppDo;->getUserBaseDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/yuelan/dreampay/date/ConFigFile;->Url_JSMain:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/initMobileInfoapiInitMobile.do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/yuelan/dreampay/thread/SdkStartInitThread;

    iget-object v5, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-direct {v4, v2, v5, v0, v1}, Lcom/yuelan/dreampay/thread/SdkStartInitThread;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;ILcom/yuelan/dreampay/date/PayDetailInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;J)V
    .locals 0

    iput-wide p1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->g:J

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 2

    new-instance v0, Lcom/yuelan/dreampay/pay/A;

    invoke-direct {v0, p0, p1}, Lcom/yuelan/dreampay/pay/A;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/yuelan/dreampay/common/AutoBDPhoneUtil;->queryBDInfo(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b(Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lorg/json/JSONArray;ILcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lorg/json/JSONArray;ILcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->k:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/json/JSONArray;ILcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt p2, v1, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendMsg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "smsContent"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "smsSend"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    const/16 v0, 0x1b5b

    invoke-direct {p0, p3, v0, p4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    const/16 v1, 0x1b62

    invoke-direct {p0, p3, v1, p4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    invoke-direct {p0, v9, p3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p2, 0x1

    :try_start_1
    invoke-virtual {p3, v2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->setNowBu(I)V

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-direct {p0, v2, p3, p4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/yuelan/codelib/sim/SIMUtil;->sendSmsMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "re"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p3, v0}, Lcom/yuelan/dreampay/date/PayDetailInfo;->setNowBu(I)V

    invoke-direct {p0, p3, p4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b(Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    goto :goto_1

    :cond_4
    const-string v3, "rys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p3, v0}, Lcom/yuelan/dreampay/date/PayDetailInfo;->setNowBu(I)V

    invoke-direct {p0, p3, p4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b(Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    goto/16 :goto_1

    :cond_5
    const-string v3, "cmread"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "bookPayType"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cmreadurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_6

    :try_start_2
    new-instance v2, Lcom/yuelan/dreampay/pay/u;

    invoke-direct {v2, p0, p3, p4}, Lcom/yuelan/dreampay/pay/u;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/yuelan/dreampay/pay/v;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/yuelan/dreampay/pay/v;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, v1, p3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    sget v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    const/16 v1, 0xfa6

    invoke-interface {p4, v1}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    const/16 v2, 0xfa6

    sget-object v3, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e:Ljava/lang/String;

    sget-object v4, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3, p3, v4}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    const/16 v0, 0x1b59

    invoke-direct {p0, p3, v0, p4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    goto/16 :goto_1

    :cond_7
    const-string v3, "wait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v0, "waitTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, p2, 0x1

    new-instance v0, Lcom/yuelan/dreampay/pay/f;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yuelan/dreampay/pay/f;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lorg/json/JSONArray;ILcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    sget v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    if-ne v1, v9, :cond_8

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/view/LoadingDialog;->show(Ljava/lang/String;)V

    :cond_8
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yuelan/dreampay/pay/g;

    invoke-direct {v2, p0, v6, v0}, Lcom/yuelan/dreampay/pay/g;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :cond_9
    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v0, "postUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    const-string v0, "param1"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "param2"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, p2, 0x1

    new-instance v0, Lcom/yuelan/dreampay/pay/h;

    move-object v1, p0

    move-object v2, p3

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/yuelan/dreampay/pay/h;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;ILjava/lang/String;Ljava/lang/String;Lcom/yuelan/dreampay/listen/PayCallback;Lorg/json/JSONArray;)V

    sget v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    if-ne v1, v9, :cond_a

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/view/LoadingDialog;->show(Ljava/lang/String;)V

    :cond_a
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yuelan/dreampay/pay/i;

    invoke-direct {v2, p0, v8, v0}, Lcom/yuelan/dreampay/pay/i;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :cond_b
    const-string v3, "psp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "pspurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pspurl1"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v0, "pspurl1"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/yuelan/codelib/utils/NetWorkUtil;->getNetWork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "cmwap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "CMWAP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lcom/yuelan/dreampay/pay/j;

    invoke-direct {v1, p0, p3, p4, v2}, Lcom/yuelan/dreampay/pay/j;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/yuelan/dreampay/pay/k;

    invoke-direct {v3, p0, v0, v1}, Lcom/yuelan/dreampay/pay/k;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0, p3, p4, v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    const v0, 0x9c70

    invoke-interface {p4, v0}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    const v1, 0x9c70

    sget-object v2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/LoadingDialog;->dismiss()V

    const/16 v1, 0x1b61

    invoke-direct {p0, p3, v1, p4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/date/PayDetailInfo;ILcom/yuelan/dreampay/listen/PayCallback;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, p3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 10

    invoke-virtual {p1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getFilterVerifSpnumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getFilterVerifHeadContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getFilterVerifEndContent()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/yuelan/dreampay/pay/I;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    new-instance v5, Lcom/yuelan/dreampay/pay/r;

    invoke-direct {v5, p0, p1, p2}, Lcom/yuelan/dreampay/pay/r;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/yuelan/dreampay/pay/I;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Lcom/yuelan/dreampay/listen/SmsReceiverListener;JLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private b(Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    const-string v1, "MILI_PAY_APPID"

    invoke-static {v0, v1}, Lcom/yuelan/codelib/utils/AppUtil;->getMeTAInt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->r:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    const-string v2, "MILI_PAY_CHANNELID"

    invoke-static {v1, v2}, Lcom/yuelan/codelib/utils/AppUtil;->getMeTAString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/encryption/MD5Encoder;->EncoderByMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcom/yuelan/dreampay/common/AppDo;->getUserBaseDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "appId"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "orderNum"

    sget-object v3, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "packageName"

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->s:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "sign"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "payId"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "price#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "price#"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "payFee"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    const-string v1, "error_channel.info"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/common/CacheHelper;->caCheAvailability_Local(Ljava/io/File;)I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "passId"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.yuelan.pay.wang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "cantest"

    const-string v1, "test"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v0, Lcom/yuelan/dreampay/pay/B;

    invoke-direct {v0, p0, p1}, Lcom/yuelan/dreampay/pay/B;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;)V

    sget v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/yuelan/dreampay/view/LoadingDialog;->show(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/yuelan/dreampay/thread/PayThread;

    invoke-direct {v3, v0, v2}, Lcom/yuelan/dreampay/thread/PayThread;-><init>(Landroid/os/Handler;Ljava/util/Map;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_6
    const-string v0, "packageName"

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    const-string v0, "error_channel.info"

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)V
    .locals 0

    invoke-direct {p0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->g()V

    return-void
.end method

.method static synthetic b(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 12

    const/4 v4, 0x1

    new-instance v2, Landroid/app/Dialog;

    const-string v0, "style"

    const-string v1, "mili_smspay_dialog"

    invoke-static {p1, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    const-string v3, "mili_smspay_pay_dialog"

    invoke-static {p1, v1, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;

    move-result-object v8

    const-string v0, "id"

    const-string v1, "btn_pay_sure"

    invoke-static {p1, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setClickable(Z)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v0, "id"

    const-string v1, "btn_close"

    invoke-static {p1, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const-string v0, "id"

    const-string v1, "text_pay_cost"

    invoke-static {p1, v0, v1}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "id"

    const-string v3, "text_product_name"

    invoke-static {p1, v1, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "id"

    const-string v4, "text_product_name2"

    invoke-static {p1, v3, v4}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "id"

    const-string v6, "text_order_detail"

    invoke-static {p1, v4, v6}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "id"

    const-string v10, "text_service_phone"

    invoke-static {p1, v6, v10}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v10, "id"

    const-string v11, "text_channel1"

    invoke-static {p1, v10, v11}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getMoney()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getPayDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getPayAlert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getOrderDetail()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "2.\u5ba2\u670d\u7535\u8bdd:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/yuelan/dreampay/date/ConFigFile;->Service_Num:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u652f\u4ed8\u901a\u9053\uff1a\u672c\u6b21\u652f\u4ed8\u60a8\u5c06\u4f7f\u7528\u7531"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u4e0e"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\u8054\u5408\u63d0\u4f9b\u7684\u201c"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getChannelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u201d\u4e1a\u52a1\u901a\u9053\uff0c\u8d44\u8d39"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getMoney()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u5143\u3002"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "1.\u8bdd\u8d39\u652f\u4ed8\u6307\u4ece\u60a8\u7684\u8bdd\u8d39\u8d26\u6237\u4e2d\u76f4\u63a5\u6263\u9664\u8d39\u7528\uff0c\u7531"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->j:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u4ee3\u6536\u3002"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Lcom/yuelan/dreampay/pay/c;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/yuelan/dreampay/pay/c;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/app/Dialog;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;Landroid/widget/Button;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/yuelan/dreampay/pay/e;

    move-object v4, p0

    move-object v5, p2

    move-object v6, v2

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/yuelan/dreampay/pay/e;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Landroid/app/Dialog;Lcom/yuelan/dreampay/listen/PayCallback;Landroid/app/Activity;)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/dreampay/view/LoadingDialog;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Lcom/yuelan/codelib/comm/MyPreference;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->h:Lcom/yuelan/codelib/comm/MyPreference;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->q:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)J
    .locals 2

    iget-wide v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->f:J

    return-wide v0
.end method

.method static synthetic e()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->m:I

    return-void
.end method

.method static synthetic f()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method private g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->c:Lcom/yuelan/dreampay/pay/F;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public Pay(Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0x138c

    const/16 v9, 0x138b

    const/16 v8, 0x1389

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->o:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->o:Ljava/util/Timer;

    :cond_0
    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->p:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    new-instance v0, Lcom/yuelan/dreampay/pay/a;

    invoke-direct {v0, p0}, Lcom/yuelan/dreampay/pay/a;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)V

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->p:Ljava/util/TimerTask;

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->o:Ljava/util/Timer;

    sget-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->p:Ljava/util/TimerTask;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x4e20

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    if-le v0, v7, :cond_2

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    const/16 v0, 0x1391

    invoke-interface {p1, v0}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->g()V

    invoke-static {}, Lcom/yuelan/dreampay/common/AppDo;->doShuaPV()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AppDo;->doShuaMoney(Landroid/content/Context;)V

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/yuelan/codelib/sim/SIMUtil;->getMainCardIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/yuelan/codelib/utils/PhoneUtil;->getNativePhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/yuelan/codelib/utils/OperatorUtil;->getOperatorTypeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->j:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->f:J

    sput-object p3, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->i:Ljava/lang/String;

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->getNowTimeNum()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/yuelan/dreampay/common/AppDo;->getUserBaseDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "loadMobileRevise"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "createTime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "orderNum"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v2, Lcom/yuelan/dreampay/pay/p;

    invoke-direct {v2, p0, v0, v1}, Lcom/yuelan/dreampay/pay/p;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    invoke-interface {p1, v10}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0, v10, p2, v6, p3}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "price#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/yuelan/codelib/sim/SIMUtil;->isCanUseSim(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/yuelan/codelib/sim/SIMUtil;->getMainCardIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    const/16 v3, 0x138d

    invoke-static {v0, v3, p2, v6, p3}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yuelan/dreampay/common/AppDo;->isAutoOpenGprs:Z

    sput-object p2, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->h:Lcom/yuelan/codelib/comm/MyPreference;

    const-string v3, "sdkinit"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/yuelan/codelib/comm/MyPreference;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    invoke-interface {p1, v8}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0, v8, p2, v6, p3}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    invoke-interface {p1, v9}, Lcom/yuelan/dreampay/listen/PayCallback;->payEnd(I)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0, v9, p2, v6, p3}, Lcom/yuelan/dreampay/common/AppDo;->errorRecord(Landroid/content/Context;ILjava/lang/String;Lcom/yuelan/dreampay/date/PayDetailInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/yuelan/dreampay/thread/DoPayThread;

    invoke-direct {v3, v2, v1}, Lcom/yuelan/dreampay/thread/DoPayThread;-><init>(Landroid/os/Handler;Ljava/util/Map;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/yuelan/codelib/utils/NetWorkUtil;->hasNetWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0, v7}, Lcom/yuelan/codelib/utils/NetWorkUtil;->openGprs(Landroid/content/Context;Z)V

    new-instance v0, Lcom/yuelan/dreampay/pay/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/yuelan/dreampay/pay/w;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    sget v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->d:Lcom/yuelan/dreampay/view/LoadingDialog;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/view/LoadingDialog;->show(Ljava/lang/String;)V

    :cond_8
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yuelan/dreampay/pay/x;

    invoke-direct {v2, p0, v0}, Lcom/yuelan/dreampay/pay/x;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public moneyPay(Lcom/yuelan/dreampay/listen/PayCallback;DLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "price#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->Pay(Lcom/yuelan/dreampay/listen/PayCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNewChannel(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "error_channel.info"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/yuelan/codelib/utils/FileUtil;->writeDateFile(Ljava/lang/String;[BLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "justtest"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.yuelan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->s:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public showPayContentDialog_Theme(Landroid/app/Activity;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V
    .locals 24

    invoke-virtual/range {p2 .. p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getShowTheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v6, Landroid/app/Dialog;

    const-string v3, "style"

    const-string v4, "mili_smspay_dialog"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "mili_smspay_pay_dialog2"

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;

    move-result-object v12

    const-string v3, "id"

    const-string v4, "btn_pay_sure"

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const-string v4, "id"

    const-string v5, "btn_close"

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/ImageView;

    const-string v4, "id"

    const-string v5, "text_product_name"

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "id"

    const-string v7, "text_product_name2"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v7}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, "id"

    const-string v8, "text_order_detail"

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "id"

    const-string v13, "text_service_phone"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v13}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v13, "id"

    const-string v14, "mili_smspay_theme_lin"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    packed-switch v11, :pswitch_data_0

    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/img1_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/img2_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    sget-object v16, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "/img3_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v17, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "/img4_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/img5_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/yuelan/codelib/utils/BitmapUtil;->readBitMapForSD(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_0

    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v13, 0x0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v13, v0}, Landroid/widget/LinearLayout;->measure(II)V

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v22

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    invoke-static {v14, v10}, Lcom/yuelan/codelib/utils/BitmapUtil;->readBitMapForSD(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_1

    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v13, v14, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getFontColor1()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "#"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    invoke-static {v15, v10}, Lcom/yuelan/codelib/utils/BitmapUtil;->readBitMapForSD(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/yuelan/codelib/utils/BitmapUtil;->readBitMapForSD(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v13, 0x1

    invoke-static {v11, v13}, Lcom/yuelan/codelib/utils/BitmapUtil;->readBitMapForSD(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v13, v14, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v10, v14, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Lcom/yuelan/dreampay/pay/C;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10, v13}, Lcom/yuelan/dreampay/pay/C;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getFontColor2()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :pswitch_0
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getPayDetail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getPayAlert()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "\u5ba2\u670d\u7535\u8bdd:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/yuelan/dreampay/date/ConFigFile;->Service_Num:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "\u8bdd\u8d39\u652f\u4ed8\u6307\u4ece\u60a8\u7684\u8bdd\u8d39\u8d26\u6237\u4e2d\u76f4\u63a5\u6263\u9664\u8d39\u7528\uff0c\u7531"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->j:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\u4ee3\u6536\u3002"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    new-instance v4, Lcom/yuelan/dreampay/pay/D;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/yuelan/dreampay/pay/D;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/app/Dialog;Lcom/yuelan/dreampay/date/PayDetailInfo;Lcom/yuelan/dreampay/listen/PayCallback;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/yuelan/dreampay/pay/b;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/yuelan/dreampay/pay/b;-><init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Lcom/yuelan/dreampay/date/PayDetailInfo;Landroid/app/Dialog;Lcom/yuelan/dreampay/listen/PayCallback;Landroid/app/Activity;)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
