.class public Lcom/tendcloud/tenddata/game/bd;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/bd$b;,
        Lcom/tendcloud/tenddata/game/bd$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I


# instance fields
.field private f:Lcom/tendcloud/tenddata/game/az;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/tendcloud/tenddata/game/bd;->a:I

    .line 17
    sput v1, Lcom/tendcloud/tenddata/game/bd;->b:I

    .line 18
    sput v1, Lcom/tendcloud/tenddata/game/bd;->c:I

    .line 19
    const/16 v0, -0x28

    sput v0, Lcom/tendcloud/tenddata/game/bd;->d:I

    .line 20
    const/4 v0, 0x4

    sput v0, Lcom/tendcloud/tenddata/game/bd;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/tendcloud/tenddata/game/az;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/az;-><init>()V

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bd;-><init>(Lcom/tendcloud/tenddata/game/az;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/tendcloud/tenddata/game/az;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bd;->f:Lcom/tendcloud/tenddata/game/az;

    .line 51
    return-void
.end method


# virtual methods
.method public a(II)D
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 272
    if-gez p1, :cond_0

    if-ltz p2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-wide v0

    .line 275
    :cond_1
    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    .line 276
    int-to-double v4, p1

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 277
    sget v6, Lcom/tendcloud/tenddata/game/bd;->a:I

    int-to-double v6, v6

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    sget v0, Lcom/tendcloud/tenddata/game/bd;->a:I

    int-to-double v0, v0

    sub-double v0, v4, v0

    .line 278
    :cond_2
    add-double/2addr v0, v2

    div-double/2addr v0, v2

    sget v2, Lcom/tendcloud/tenddata/game/bd;->b:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;)D
    .locals 16

    .prologue
    .line 61
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bc;->a(Z)Ljava/util/Map;

    move-result-object v9

    .line 62
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bc;->a(Z)Ljava/util/Map;

    move-result-object v10

    .line 64
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 65
    const/4 v6, 0x0

    .line 66
    const-wide/16 v4, 0x0

    .line 67
    const-wide/16 v2, 0x0

    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v12, 0x0

    .line 71
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

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/ay;

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/ay;

    .line 74
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v14

    add-int/2addr v3, v14

    .line 76
    if-nez v1, :cond_0

    .line 77
    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-wide v1, v4

    move-wide v4, v6

    move v6, v8

    :goto_1
    move v8, v6

    move-wide v6, v4

    move-wide v4, v1

    .line 84
    goto :goto_0

    .line 79
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 80
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v14

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/tendcloud/tenddata/game/bd;->b(II)D

    move-result-wide v14

    .line 81
    add-double/2addr v4, v14

    .line 82
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v2

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/tendcloud/tenddata/game/bd;->a(II)D

    move-result-wide v1

    mul-double/2addr v1, v14

    add-double/2addr v6, v1

    move-wide v1, v4

    move-wide v4, v6

    move v6, v8

    goto :goto_1

    .line 85
    :cond_1
    if-nez v8, :cond_2

    .line 86
    const-wide/16 v1, 0x0

    .line 116
    :goto_2
    return-wide v1

    .line 89
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

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/ay;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v2

    add-int/2addr v3, v2

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 103
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/tendcloud/tenddata/game/bc;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/tendcloud/tenddata/game/bc;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v12

    .line 104
    div-int/2addr v3, v1

    .line 106
    const-wide/16 v1, 0x0

    .line 107
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tendcloud/tenddata/game/bd;->f:Lcom/tendcloud/tenddata/game/az;

    invoke-virtual {v9}, Lcom/tendcloud/tenddata/game/az;->d()I

    move-result v9

    int-to-double v12, v3

    const-wide v14, 0x3ff3333333333333L    # 1.2

    add-double/2addr v12, v14

    double-to-int v3, v12

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 108
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v2, v1

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/ay;

    .line 109
    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v1

    if-le v1, v9, :cond_6

    .line 110
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double v1, v2, v11

    :goto_5
    move-wide v2, v1

    .line 112
    goto :goto_4

    .line 114
    :cond_5
    mul-int/lit8 v1, v8, 0x2

    int-to-double v8, v1

    add-double/2addr v8, v2

    div-double v1, v2, v8

    .line 116
    div-double v3, v6, v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sget v7, Lcom/tendcloud/tenddata/game/bd;->e:I

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

.method public a(Lcom/tendcloud/tenddata/game/bc;Ljava/util/List;)D
    .locals 6

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    .line 128
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/bc;

    .line 129
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/bd;->a(Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;)D

    move-result-wide v4

    .line 130
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move-wide v1, v0

    .line 132
    goto :goto_0

    .line 134
    :cond_0
    return-wide v1
.end method

.method public a(Ljava/util/List;Ljava/util/List;)D
    .locals 9

    .prologue
    const-wide/16 v1, 0x0

    .line 146
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-wide v1

    .line 149
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 150
    invoke-virtual {p0, p1, p2, v3}, Lcom/tendcloud/tenddata/game/bd;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 153
    const/4 v0, 0x0

    .line 154
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

    check-cast v0, Lcom/tendcloud/tenddata/game/bd$a;

    .line 155
    iget-object v5, v0, Lcom/tendcloud/tenddata/game/bd$a;->a:Lcom/tendcloud/tenddata/game/bc;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/tendcloud/tenddata/game/bd$a;->b:Lcom/tendcloud/tenddata/game/bc;

    if-eqz v5, :cond_3

    .line 156
    iget-wide v5, v0, Lcom/tendcloud/tenddata/game/bd$a;->c:D

    add-double/2addr v2, v5

    .line 157
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move-wide v7, v2

    move-wide v1, v7

    :goto_2
    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    .line 160
    goto :goto_1

    .line 161
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

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)D
    .locals 9

    .prologue
    const-wide/16 v1, 0x0

    .line 240
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    :goto_0
    return-wide v1

    .line 245
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 246
    invoke-virtual {p0, p1, p2, v3}, Lcom/tendcloud/tenddata/game/bd;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 248
    const/4 v0, 0x0

    .line 249
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

    check-cast v0, Lcom/tendcloud/tenddata/game/bd$a;

    .line 250
    iget-object v5, v0, Lcom/tendcloud/tenddata/game/bd$a;->a:Lcom/tendcloud/tenddata/game/bc;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/tendcloud/tenddata/game/bd$a;->b:Lcom/tendcloud/tenddata/game/bc;

    if-eqz v5, :cond_2

    .line 251
    iget-wide v5, v0, Lcom/tendcloud/tenddata/game/bd$a;->c:D

    add-double/2addr v2, v5

    .line 252
    add-int/lit8 v1, v1, 0x1

    .line 253
    iget-object v5, v0, Lcom/tendcloud/tenddata/game/bd$a;->a:Lcom/tendcloud/tenddata/game/bc;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/bd$a;->b:Lcom/tendcloud/tenddata/game/bc;

    invoke-virtual {p0, v5, v0}, Lcom/tendcloud/tenddata/game/bd;->b(Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;)Lcom/tendcloud/tenddata/game/bc;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    move-wide v7, v2

    move-wide v1, v7

    :goto_2
    move-wide v7, v1

    move-wide v2, v7

    move v1, v0

    .line 259
    goto :goto_1

    .line 255
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/bd;->f:Lcom/tendcloud/tenddata/game/az;

    invoke-virtual {v6}, Lcom/tendcloud/tenddata/game/az;->b()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 256
    iget-object v5, v0, Lcom/tendcloud/tenddata/game/bd$a;->a:Lcom/tendcloud/tenddata/game/bc;

    if-nez v5, :cond_4

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/bd$a;->b:Lcom/tendcloud/tenddata/game/bc;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bc;->d()Lcom/tendcloud/tenddata/game/bc;

    move-result-object v0

    :goto_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v1

    move-wide v7, v2

    move-wide v1, v7

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/bd$a;->a:Lcom/tendcloud/tenddata/game/bc;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bc;->d()Lcom/tendcloud/tenddata/game/bc;

    move-result-object v0

    goto :goto_3

    .line 260
    :cond_5
    int-to-double v0, v1

    div-double v1, v2, v0

    goto :goto_0
.end method

.method public b(II)D
    .locals 4

    .prologue
    .line 327
    if-gez p1, :cond_0

    if-ltz p2, :cond_1

    .line 328
    :cond_0
    const-wide/16 v0, 0x0

    .line 332
    :goto_0
    return-wide v0

    .line 330
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    .line 332
    sget v2, Lcom/tendcloud/tenddata/game/bd;->d:I

    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    add-double/2addr v0, v2

    sget v2, Lcom/tendcloud/tenddata/game/bd;->d:I

    add-int/lit16 v2, v2, 0x80

    int-to-double v2, v2

    div-double/2addr v0, v2

    sget v2, Lcom/tendcloud/tenddata/game/bd;->c:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public b(Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;)Lcom/tendcloud/tenddata/game/bc;
    .locals 12

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/game/bc;->a(Z)Ljava/util/Map;

    move-result-object v6

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/tendcloud/tenddata/game/bc;->a(Z)Ljava/util/Map;

    move-result-object v7

    .line 175
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 177
    new-instance v9, Lcom/tendcloud/tenddata/game/bc;

    invoke-direct {v9}, Lcom/tendcloud/tenddata/game/bc;-><init>()V

    .line 178
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/bc;->b()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/tendcloud/tenddata/game/bc;->setPoiId(J)V

    .line 179
    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/bc;->a()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/tendcloud/tenddata/game/bc;->setTimestamp(I)V

    .line 180
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 181
    invoke-virtual {v9, v10}, Lcom/tendcloud/tenddata/game/bc;->setBsslist(Ljava/util/List;)V

    .line 183
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/tendcloud/tenddata/game/ay;

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/tendcloud/tenddata/game/ay;

    .line 186
    if-nez v5, :cond_1

    .line 188
    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v0

    neg-int v0, v0

    int-to-double v0, v0

    .line 189
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double/2addr v0, v4

    goto :goto_1

    .line 192
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v8, v0, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/game/ay;

    .line 197
    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/ay;->a()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/ay;->b()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v4

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v3

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    .line 200
    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/ay;->d()B

    move-result v4

    .line 201
    invoke-virtual {v5}, Lcom/tendcloud/tenddata/game/ay;->e()B

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ay;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    .line 202
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_2
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/ay;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ay;->c()B

    move-result v1

    neg-int v1, v1

    int-to-double v1, v1

    .line 209
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 210
    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double/2addr v1, v4

    goto :goto_3

    .line 212
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 219
    :cond_5
    invoke-interface {v8}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

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

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    neg-double v3, v3

    double-to-int v1, v3

    int-to-byte v1, v1

    .line 221
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/bd;->f:Lcom/tendcloud/tenddata/game/az;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/az;->c()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/bd;->f:Lcom/tendcloud/tenddata/game/az;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/az;->d()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 226
    :cond_6
    return-object v9

    .line 224
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11

    .prologue
    .line 290
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 292
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/bc;

    .line 294
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/bc;

    .line 295
    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/game/bd;->a(Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;)D

    move-result-wide v4

    .line 297
    new-instance v0, Lcom/tendcloud/tenddata/game/bd$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/bd$a;-><init>(Lcom/tendcloud/tenddata/game/bd;Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;D)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    :cond_0
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/game/be;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/be;-><init>(Lcom/tendcloud/tenddata/game/bd;)V

    .line 307
    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 309
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 310
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/bd$a;

    .line 311
    iget-object v2, v0, Lcom/tendcloud/tenddata/game/bd$a;->a:Lcom/tendcloud/tenddata/game/bc;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/tendcloud/tenddata/game/bd$a;->b:Lcom/tendcloud/tenddata/game/bc;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    iget-object v2, v0, Lcom/tendcloud/tenddata/game/bd$a;->a:Lcom/tendcloud/tenddata/game/bc;

    invoke-interface {v7, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object v2, v0, Lcom/tendcloud/tenddata/game/bd$a;->b:Lcom/tendcloud/tenddata/game/bc;

    invoke-interface {v8, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 314
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 317
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/bc;

    .line 318
    new-instance v0, Lcom/tendcloud/tenddata/game/bd$a;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/bd$a;-><init>(Lcom/tendcloud/tenddata/game/bd;Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;D)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 320
    :cond_4
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/bc;

    .line 321
    new-instance v0, Lcom/tendcloud/tenddata/game/bd$a;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/bd$a;-><init>(Lcom/tendcloud/tenddata/game/bd;Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;D)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 323
    :cond_5
    return-void
.end method
