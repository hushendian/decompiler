.class final Lcom/tendcloud/tenddata/game/ba;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/ba$c;,
        Lcom/tendcloud/tenddata/game/ba$b;,
        Lcom/tendcloud/tenddata/game/ba$a;,
        Lcom/tendcloud/tenddata/game/ba$e;,
        Lcom/tendcloud/tenddata/game/ba$d;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I


# instance fields
.field private f:Lcom/tendcloud/tenddata/game/ba$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 17
    const/4 v0, 0x2

    sput v0, Lcom/tendcloud/tenddata/game/ba;->a:I

    .line 18
    sput v1, Lcom/tendcloud/tenddata/game/ba;->b:I

    .line 19
    sput v1, Lcom/tendcloud/tenddata/game/ba;->c:I

    .line 20
    const/16 v0, -0x28

    sput v0, Lcom/tendcloud/tenddata/game/ba;->d:I

    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/tendcloud/tenddata/game/ba;->e:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/tendcloud/tenddata/game/ba$b;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ba$b;-><init>()V

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/ba;-><init>(Lcom/tendcloud/tenddata/game/ba$b;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/tendcloud/tenddata/game/ba$b;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ba;->f:Lcom/tendcloud/tenddata/game/ba$b;

    .line 55
    return-void
.end method


# virtual methods
.method a(II)D
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 281
    if-gez p1, :cond_0

    if-ltz p2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-wide v0

    .line 284
    :cond_1
    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    .line 285
    int-to-double v4, p1

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 286
    sget v6, Lcom/tendcloud/tenddata/game/ba;->a:I

    int-to-double v6, v6

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    sget v0, Lcom/tendcloud/tenddata/game/ba;->a:I

    int-to-double v0, v0

    sub-double v0, v4, v0

    .line 287
    :cond_2
    add-double/2addr v0, v2

    div-double/2addr v0, v2

    sget v2, Lcom/tendcloud/tenddata/game/ba;->b:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method a(Lcom/tendcloud/tenddata/game/ba$c;Lcom/tendcloud/tenddata/game/ba$c;)D
    .locals 16

    .prologue
    .line 66
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/ba$c;->a(Z)Ljava/util/Map;

    move-result-object v9

    .line 67
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/ba$c;->a(Z)Ljava/util/Map;

    move-result-object v10

    .line 69
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 70
    const/4 v6, 0x0

    .line 71
    const-wide/16 v4, 0x0

    .line 72
    const-wide/16 v2, 0x0

    .line 73
    const/4 v1, 0x0

    .line 74
    const/4 v12, 0x0

    .line 76
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v8, v6

    move-wide v6, v4

    move-wide v4, v2

    move v3, v1

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/ba$a;

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/ba$a;

    .line 79
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v14

    add-int/2addr v3, v14

    .line 81
    if-nez v1, :cond_0

    .line 82
    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-wide v1, v4

    move-wide v4, v6

    move v6, v8

    :goto_1
    move v8, v6

    move-wide v6, v4

    move-wide v4, v1

    .line 89
    goto :goto_0

    .line 84
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 85
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v14

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/tendcloud/tenddata/game/ba;->b(II)D

    move-result-wide v14

    .line 86
    add-double/2addr v4, v14

    .line 87
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v2

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/tendcloud/tenddata/game/ba;->a(II)D

    move-result-wide v1

    mul-double/2addr v1, v14

    add-double/2addr v6, v1

    move-wide v1, v4

    move-wide v4, v6

    move v6, v8

    goto :goto_1

    .line 90
    :cond_1
    if-nez v8, :cond_2

    .line 91
    const-wide/16 v1, 0x0

    .line 121
    :goto_2
    return-wide v1

    .line 94
    :cond_2
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/ba$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v2

    add-int/2addr v3, v2

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 108
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/tendcloud/tenddata/game/ba$c;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/tendcloud/tenddata/game/ba$c;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v12

    .line 109
    div-int/2addr v3, v1

    .line 111
    const-wide/16 v1, 0x0

    .line 112
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tendcloud/tenddata/game/ba;->f:Lcom/tendcloud/tenddata/game/ba$b;

    invoke-virtual {v9}, Lcom/tendcloud/tenddata/game/ba$b;->d()I

    move-result v9

    int-to-double v12, v3

    const-wide v14, 0x3ff3333333333333L    # 1.2

    add-double/2addr v12, v14

    double-to-int v3, v12

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 113
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v2, v1

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/ba$a;

    .line 114
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v1

    if-le v1, v9, :cond_6

    .line 115
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double v1, v2, v11

    :goto_5
    move-wide v2, v1

    .line 117
    goto :goto_4

    .line 119
    :cond_5
    mul-int/lit8 v1, v8, 0x2

    int-to-double v8, v1

    add-double/2addr v8, v2

    div-double v1, v2, v8

    .line 121
    div-double v3, v6, v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sget v7, Lcom/tendcloud/tenddata/game/ba;->e:I

    int-to-double v7, v7

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-double v1, v5, v1

    mul-double/2addr v1, v3

    goto/16 :goto_2

    :cond_6
    move-wide v1, v2

    goto :goto_5
.end method

.method a(Lcom/tendcloud/tenddata/game/ba$c;Ljava/util/List;)D
    .locals 6

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    .line 134
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ba$c;

    .line 135
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/ba;->a(Lcom/tendcloud/tenddata/game/ba$c;Lcom/tendcloud/tenddata/game/ba$c;)D

    move-result-wide v4

    .line 136
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move-wide v1, v0

    .line 138
    goto :goto_0

    .line 140
    :cond_0
    return-wide v1
.end method

.method a(Ljava/util/List;Ljava/util/List;)D
    .locals 9

    .prologue
    const-wide/16 v1, 0x0

    .line 153
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-wide v1

    .line 156
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 157
    invoke-virtual {p0, p1, p2, v3}, Lcom/tendcloud/tenddata/game/ba;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 160
    const/4 v0, 0x0

    .line 161
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ba$d;

    .line 162
    iget-object v5, v0, Lcom/tendcloud/tenddata/game/ba$d;->a:Lcom/tendcloud/tenddata/game/ba$c;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/tendcloud/tenddata/game/ba$d;->b:Lcom/tendcloud/tenddata/game/ba$c;

    if-eqz v5, :cond_3

    .line 163
    iget-wide v5, v0, Lcom/tendcloud/tenddata/game/ba$d;->c:D

    add-double/2addr v2, v5

    .line 164
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move-wide v7, v2

    move-wide v1, v7

    :goto_2
    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    .line 167
    goto :goto_1

    .line 168
    :cond_2
    int-to-double v0, v1

    div-double v1, v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    move-wide v7, v2

    move-wide v1, v7

    goto :goto_2
.end method

.method a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)D
    .locals 9

    .prologue
    const-wide/16 v1, 0x0

    .line 248
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    :goto_0
    return-wide v1

    .line 253
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 254
    invoke-virtual {p0, p1, p2, v3}, Lcom/tendcloud/tenddata/game/ba;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 256
    const/4 v0, 0x0

    .line 257
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ba$d;

    .line 258
    iget-object v5, v0, Lcom/tendcloud/tenddata/game/ba$d;->a:Lcom/tendcloud/tenddata/game/ba$c;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/tendcloud/tenddata/game/ba$d;->b:Lcom/tendcloud/tenddata/game/ba$c;

    if-eqz v5, :cond_2

    .line 259
    iget-wide v5, v0, Lcom/tendcloud/tenddata/game/ba$d;->c:D

    add-double/2addr v2, v5

    .line 260
    add-int/lit8 v1, v1, 0x1

    .line 261
    iget-object v5, v0, Lcom/tendcloud/tenddata/game/ba$d;->a:Lcom/tendcloud/tenddata/game/ba$c;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ba$d;->b:Lcom/tendcloud/tenddata/game/ba$c;

    invoke-virtual {p0, v5, v0}, Lcom/tendcloud/tenddata/game/ba;->b(Lcom/tendcloud/tenddata/game/ba$c;Lcom/tendcloud/tenddata/game/ba$c;)Lcom/tendcloud/tenddata/game/ba$c;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move-wide v7, v2

    move-wide v1, v7

    :goto_2
    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    .line 267
    goto :goto_1

    .line 263
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/ba;->f:Lcom/tendcloud/tenddata/game/ba$b;

    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/ba$b;->b()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 264
    iget-object v5, v0, Lcom/tendcloud/tenddata/game/ba$d;->a:Lcom/tendcloud/tenddata/game/ba$c;

    if-nez v5, :cond_4

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ba$d;->b:Lcom/tendcloud/tenddata/game/ba$c;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ba$c;->d()Lcom/tendcloud/tenddata/game/ba$c;

    move-result-object v0

    :goto_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v1

    move-wide v7, v2

    move-wide v1, v7

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/ba$d;->a:Lcom/tendcloud/tenddata/game/ba$c;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ba$c;->d()Lcom/tendcloud/tenddata/game/ba$c;

    move-result-object v0

    goto :goto_3

    .line 268
    :cond_5
    int-to-double v0, v1

    div-double v1, v2, v0

    goto :goto_0
.end method

.method b(II)D
    .locals 4

    .prologue
    .line 337
    if-gez p1, :cond_0

    if-ltz p2, :cond_1

    .line 338
    :cond_0
    const-wide/16 v0, 0x0

    .line 342
    :goto_0
    return-wide v0

    .line 340
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    .line 342
    sget v2, Lcom/tendcloud/tenddata/game/ba;->d:I

    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    add-double/2addr v0, v2

    sget v2, Lcom/tendcloud/tenddata/game/ba;->d:I

    add-int/lit16 v2, v2, 0x80

    int-to-double v2, v2

    div-double/2addr v0, v2

    sget v2, Lcom/tendcloud/tenddata/game/ba;->c:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method b(Lcom/tendcloud/tenddata/game/ba$c;Lcom/tendcloud/tenddata/game/ba$c;)Lcom/tendcloud/tenddata/game/ba$c;
    .locals 13

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/game/ba$c;->a(Z)Ljava/util/Map;

    move-result-object v7

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/tendcloud/tenddata/game/ba$c;->a(Z)Ljava/util/Map;

    move-result-object v8

    .line 182
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 184
    new-instance v10, Lcom/tendcloud/tenddata/game/ba$c;

    invoke-direct {v10, p0}, Lcom/tendcloud/tenddata/game/ba$c;-><init>(Lcom/tendcloud/tenddata/game/ba;)V

    .line 185
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/ba$c;->b()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/tendcloud/tenddata/game/ba$c;->a(J)V

    .line 186
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/ba$c;->a()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/tendcloud/tenddata/game/ba$c;->a(I)V

    .line 187
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 188
    invoke-virtual {v10, v11}, Lcom/tendcloud/tenddata/game/ba$c;->a(Ljava/util/List;)V

    .line 190
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/ba$a;

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/tendcloud/tenddata/game/ba$a;

    .line 193
    if-nez v6, :cond_1

    .line 195
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v0

    neg-int v0, v0

    int-to-double v2, v0

    .line 196
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double/2addr v2, v4

    goto :goto_1

    .line 199
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v9, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/game/ba$a;

    .line 204
    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/ba$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/ba$a;->b()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v4

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v1

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    int-to-byte v4, v1

    .line 207
    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/ba$a;->d()B

    move-result v5

    .line 208
    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/ba$a;->e()B

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/ba$a;-><init>(Lcom/tendcloud/tenddata/game/ba;Ljava/lang/String;Ljava/lang/String;BBB)V

    .line 209
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_2
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/ba$a;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ba$a;->c()B

    move-result v1

    neg-int v1, v1

    int-to-double v1, v1

    .line 216
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 217
    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double/2addr v1, v4

    goto :goto_3

    .line 219
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 226
    :cond_5
    invoke-interface {v9}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    double-to-int v1, v3

    int-to-byte v1, v1

    .line 228
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/ba;->f:Lcom/tendcloud/tenddata/game/ba$b;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/ba$b;->c()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ba;->f:Lcom/tendcloud/tenddata/game/ba$b;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/ba$b;->d()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 233
    :cond_6
    return-object v10

    .line 231
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11

    .prologue
    .line 300
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 302
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/ba$c;

    .line 304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/ba$c;

    .line 305
    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/game/ba;->a(Lcom/tendcloud/tenddata/game/ba$c;Lcom/tendcloud/tenddata/game/ba$c;)D

    move-result-wide v4

    .line 307
    new-instance v0, Lcom/tendcloud/tenddata/game/ba$d;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ba$d;-><init>(Lcom/tendcloud/tenddata/game/ba;Lcom/tendcloud/tenddata/game/ba$c;Lcom/tendcloud/tenddata/game/ba$c;D)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    :cond_0
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/game/bb;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/bb;-><init>(Lcom/tendcloud/tenddata/game/ba;)V

    .line 317
    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 320
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ba$d;

    .line 321
    iget-object v2, v0, Lcom/tendcloud/tenddata/game/ba$d;->a:Lcom/tendcloud/tenddata/game/ba$c;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/tendcloud/tenddata/game/ba$d;->b:Lcom/tendcloud/tenddata/game/ba$c;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, v0, Lcom/tendcloud/tenddata/game/ba$d;->a:Lcom/tendcloud/tenddata/game/ba$c;

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 323
    iget-object v2, v0, Lcom/tendcloud/tenddata/game/ba$d;->b:Lcom/tendcloud/tenddata/game/ba$c;

    invoke-interface {v8, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 324
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 327
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/ba$c;

    .line 328
    new-instance v0, Lcom/tendcloud/tenddata/game/ba$d;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ba$d;-><init>(Lcom/tendcloud/tenddata/game/ba;Lcom/tendcloud/tenddata/game/ba$c;Lcom/tendcloud/tenddata/game/ba$c;D)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 330
    :cond_4
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/ba$c;

    .line 331
    new-instance v0, Lcom/tendcloud/tenddata/game/ba$d;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ba$d;-><init>(Lcom/tendcloud/tenddata/game/ba;Lcom/tendcloud/tenddata/game/ba$c;Lcom/tendcloud/tenddata/game/ba$c;D)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 333
    :cond_5
    return-void
.end method
