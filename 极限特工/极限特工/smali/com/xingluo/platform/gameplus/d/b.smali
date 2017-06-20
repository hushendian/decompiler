.class public Lcom/xingluo/platform/gameplus/d/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 25

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Lcom/xingluo/platform/gameplus/net/response/a;

    invoke-direct {v2}, Lcom/xingluo/platform/gameplus/net/response/a;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "errorcode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "errormsg"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tag"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/xingluo/platform/gameplus/net/response/a;->l(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/xingluo/platform/gameplus/net/response/a;->f(I)V

    invoke-virtual {v2, v5}, Lcom/xingluo/platform/gameplus/net/response/a;->k(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v4, "games"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "games"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v4, v3, :cond_2

    invoke-virtual {v2, v6}, Lcom/xingluo/platform/gameplus/net/response/a;->a(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;

    invoke-direct {v8}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;-><init>()V

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v3

    const-string v9, "gid"

    invoke-virtual {v3, v7, v9}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v3

    const-string v10, "gicon"

    invoke-virtual {v3, v7, v10}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v3

    const-string v11, "gname"

    invoke-virtual {v3, v7, v11}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v3

    const-string v12, "pkgname"

    invoke-virtual {v3, v7, v12}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v3

    const-string v13, "pkgsize"

    invoke-virtual {v3, v7, v13}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v3

    const-string v14, "dlurl"

    invoke-virtual {v3, v7, v14}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v3

    const-string v15, "version"

    invoke-virtual {v3, v7, v15}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v3

    const-string v16, "versioncode"

    move-object/from16 v0, v16

    invoke-virtual {v3, v7, v0}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v16

    const-string v17, "bgurl"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v17

    const-string v18, "promotion"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v18

    const-string v19, "autoinstall"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/xingluo/platform/gameplus/d/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v19

    const-string v20, "replace_other"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lcom/xingluo/platform/gameplus/d/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v19

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v20

    const-string v21, "iscellularable"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Lcom/xingluo/platform/gameplus/d/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v20

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v21

    const-string v22, "pushicon"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/c;->a()Lcom/xingluo/platform/gameplus/d/c;

    move-result-object v22

    const-string v23, "pushbg"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Lcom/xingluo/platform/gameplus/d/c;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->e(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->f(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->g(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/xingluo/platform/gameplus/utils/o;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v3, "0"

    :cond_3
    invoke-virtual {v8, v3}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->h(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->j(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->i(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->a(I)V

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->b(I)V

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->c(I)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->k(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->l(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_1

    :catch_1
    move-exception v2

    move-object/from16 v24, v2

    move-object v2, v3

    move-object/from16 v3, v24

    goto/16 :goto_2
.end method

.method public static b(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xingluo/platform/ad/net/response/a;

    invoke-direct {v1}, Lcom/xingluo/platform/ad/net/response/a;-><init>()V

    :try_start_0
    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string v4, "accept_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/net/response/a;->f(I)V

    invoke-virtual {v1, v3}, Lcom/xingluo/platform/ad/net/response/a;->k(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/net/response/a;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/ad/net/response/a;->f(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 9

    new-instance v0, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;-><init>()V

    new-instance v2, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    invoke-direct {v2}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "errorcode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errormsg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v5, "accept_time"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->l(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->f(I)V

    invoke-virtual {v0, v4}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->k(Ljava/lang/String;)V

    const-string v3, "main_page_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "main_page_data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_2

    :cond_1
    invoke-virtual {v2, v3}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->a(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->a(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->f(I)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v6, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-direct {v6}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;-><init>()V

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "game_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a(Ljava/lang/String;)V

    const-string v8, "game_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(Ljava/lang/String;)V

    const-string v8, "game_icon_url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c(Ljava/lang/String;)V

    const-string v8, "game_download_url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d(Ljava/lang/String;)V

    const-string v8, "apk_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e(Ljava/lang/String;)V

    const-string v8, "apk_size"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f(Ljava/lang/String;)V

    const-string v8, "packagename"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g(Ljava/lang/String;)V

    const-string v8, "vercode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a(I)V

    const-string v8, "downloaded"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h(Ljava/lang/String;)V

    const-string v8, "hdown_flag"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(I)V

    const-string v8, "hdown_apkname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i(Ljava/lang/String;)V

    const-string v8, "down_open_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d(I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public static d(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 14

    const/4 v0, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;

    invoke-direct {v3}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;-><init>()V

    new-instance v4, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    invoke-direct {v4}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;-><init>()V

    :try_start_0
    const-string v1, "errorcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "errormsg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    const-string v6, "accept_time"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sdk_layout"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/xingluo/platform/single/util/a;->c:I

    invoke-virtual {v3, v1}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->f(I)V

    invoke-virtual {v3, v5}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->k(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->l(Ljava/lang/String;)V

    const-string v1, "main_page_type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->c(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "main_page_data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v1, v0

    :goto_1
    if-lt v1, v7, :cond_3

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->a(Ljava/util/List;)V

    const-string v1, "flag_show_exit_data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->b(I)V

    const-string v1, "luck_flag"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->d(I)V

    const-string v1, "downshowflag"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->e(I)V

    const-string v1, "exit_page_data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "flag_point_recommend"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->a(I)V

    const-string v5, "more_game_url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->a(Ljava/lang/String;)V

    const-string v5, "games_point_recommend_list"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v1, v0

    :goto_2
    if-lt v1, v7, :cond_4

    invoke-virtual {v4, v6}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->b(Ljava/util/List;)V

    :cond_1
    const-string v1, "hdown_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "hdown_gameid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hdown_pkname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->e(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->f(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->g(Ljava/lang/String;)V

    const-string v1, "logo_id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "logo_url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    new-instance v6, Lcom/xingluo/platform/single/item/LogoInfo;

    invoke-direct {v6, v1, v5}, Lcom/xingluo/platform/single/item/LogoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->a(Lcom/xingluo/platform/single/item/LogoInfo;)V

    :cond_2
    const-string v1, "ads_data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v1, "bannerads"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v1, "insertads"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v1, "an_data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v8, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;

    invoke-direct {v8}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    move v1, v0

    :goto_3
    if-lt v1, v10, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v6

    :goto_4
    if-lt v0, v6, :cond_6

    new-instance v0, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;-><init>()V

    const-string v6, "an_type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->b(I)V

    const-string v6, "an_text"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->a(Ljava/lang/String;)V

    const-string v6, "an_img"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->b(Ljava/lang/String;)V

    const-string v6, "an_gid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->c(Ljava/lang/String;)V

    const-string v6, "an_gname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->d(Ljava/lang/String;)V

    const-string v6, "an_gdl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->e(Ljava/lang/String;)V

    const-string v6, "an_apkname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->f(Ljava/lang/String;)V

    const-string v6, "an_apksize"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->g(Ljava/lang/String;)V

    const-string v6, "hdown_flag"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->c(I)V

    const-string v6, "hdown_apkname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->h(Ljava/lang/String;)V

    const-string v6, "dldesc"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->i(Ljava/lang/String;)V

    const-string v6, "packagename"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->j(Ljava/lang/String;)V

    const-string v6, "an_lottery"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->d(I)V

    const-string v2, "down_open_type"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;->a(I)V

    const-string v2, "adstime"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->a(I)V

    invoke-virtual {v8, v9}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->a(Ljava/util/List;)V

    invoke-virtual {v8, v1}, Lcom/xingluo/platform/ad/pojos/XLAdsGameData;->b(Ljava/util/List;)V

    invoke-virtual {v4, v8}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->a(Lcom/xingluo/platform/ad/pojos/XLAdsGameData;)V

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;->a(Lcom/xingluo/platform/ad/pojos/XLNoticeGameData;)V

    invoke-virtual {v3, v4}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->a(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0xbb8

    invoke-virtual {v3, v1}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->f(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v8, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;

    invoke-direct {v8}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;-><init>()V

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "game_id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a(Ljava/lang/String;)V

    const-string v10, "game_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(Ljava/lang/String;)V

    const-string v10, "game_icon_url"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->c(Ljava/lang/String;)V

    const-string v10, "game_download_url"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d(Ljava/lang/String;)V

    const-string v10, "apk_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->e(Ljava/lang/String;)V

    const-string v10, "apk_size"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->f(Ljava/lang/String;)V

    const-string v10, "packagename"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->g(Ljava/lang/String;)V

    const-string v10, "vercode"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->a(I)V

    const-string v10, "downloaded"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->h(Ljava/lang/String;)V

    const-string v10, "hdown_flag"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->b(I)V

    const-string v10, "hdown_apkname"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->i(Ljava/lang/String;)V

    const-string v10, "dldesc"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->j(Ljava/lang/String;)V

    const-string v10, "down_open_type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/xingluo/platform/ad/pojos/XLRecommendGameData;->d(I)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;

    invoke-direct {v9}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;-><init>()V

    const-string v10, "game_id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a(Ljava/lang/String;)V

    const-string v10, "game_title"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->b(Ljava/lang/String;)V

    const-string v10, "game_content"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->c(Ljava/lang/String;)V

    const-string v10, "game_img_url"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->d(Ljava/lang/String;)V

    const-string v10, "game_download_url"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->e(Ljava/lang/String;)V

    const-string v10, "style_index"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->a(I)V

    const-string v10, "apk_name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->f(Ljava/lang/String;)V

    const-string v10, "apk_size"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->g(Ljava/lang/String;)V

    const-string v10, "packagename"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->h(Ljava/lang/String;)V

    const-string v10, "vercode"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->b(I)V

    const-string v10, "hdown_flag"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->c(I)V

    const-string v10, "hdown_apkname"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->i(Ljava/lang/String;)V

    const-string v10, "dldesc"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->j(Ljava/lang/String;)V

    const-string v10, "downloadNum"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->d(I)V

    const-string v10, "down_open_type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/xingluo/platform/ad/pojos/XLPointerGameData;->e(I)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;

    invoke-direct {v12}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;-><init>()V

    const-string v13, "ban_style"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->b(I)V

    const-string v13, "ban_time"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->c(I)V

    const-string v13, "ban_icon"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->a(Ljava/lang/String;)V

    const-string v13, "ban_dl"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->b(Ljava/lang/String;)V

    const-string v13, "ban_gname"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->c(Ljava/lang/String;)V

    const-string v13, "ban_gid"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->d(Ljava/lang/String;)V

    const-string v13, "ban_apkname"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->e(Ljava/lang/String;)V

    const-string v13, "ban_apksize"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->f(Ljava/lang/String;)V

    const-string v13, "hdown_flag"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->d(I)V

    const-string v13, "hdown_apkname"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->g(Ljava/lang/String;)V

    const-string v13, "dldesc"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->h(Ljava/lang/String;)V

    const-string v13, "packagename"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->i(Ljava/lang/String;)V

    const-string v13, "ban_lottery"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->e(I)V

    const-string v13, "down_open_type"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/xingluo/platform/ad/pojos/XLAdsBannerGameData;->a(I)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;

    invoke-direct {v11}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;-><init>()V

    const-string v12, "adsid"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->a(Ljava/lang/String;)V

    const-string v12, "adsicon"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b(Ljava/lang/String;)V

    const-string v12, "adsdl"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->c(Ljava/lang/String;)V

    const-string v12, "adsgname"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->d(Ljava/lang/String;)V

    const-string v12, "adsgid"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->e(Ljava/lang/String;)V

    const-string v12, "adsapkname"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->f(Ljava/lang/String;)V

    const-string v12, "adsapksize"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->g(Ljava/lang/String;)V

    const-string v12, "hdown_flag"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->a(I)V

    const-string v12, "hdown_apkname"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->h(Ljava/lang/String;)V

    const-string v12, "dldesc"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->i(Ljava/lang/String;)V

    const-string v12, "packagename"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->j(Ljava/lang/String;)V

    const-string v12, "adslottery"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->b(I)V

    const-string v12, "down_open_type"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/xingluo/platform/ad/pojos/XLAdsInsertGameData;->c(I)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4
.end method
