.class public Lcom/xingluo/platform/gameplus/utils/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/gameplus/utils/n$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "su"

.field public static final b:Ljava/lang/String; = "sh"

.field public static final c:Ljava/lang/String; = "exit\n"

.field public static final d:Ljava/lang/String; = "\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/xingluo/platform/gameplus/utils/n$a;
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, v2}, Lcom/xingluo/platform/gameplus/utils/n;->a([Ljava/lang/String;ZZ)Lcom/xingluo/platform/gameplus/utils/n$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZZ)Lcom/xingluo/platform/gameplus/utils/n$a;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/xingluo/platform/gameplus/utils/n;->a([Ljava/lang/String;ZZ)Lcom/xingluo/platform/gameplus/utils/n$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Z)Lcom/xingluo/platform/gameplus/utils/n$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xingluo/platform/gameplus/utils/n$a;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/xingluo/platform/gameplus/utils/n;->a([Ljava/lang/String;ZZ)Lcom/xingluo/platform/gameplus/utils/n$a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/util/List;ZZ)Lcom/xingluo/platform/gameplus/utils/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/xingluo/platform/gameplus/utils/n$a;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/xingluo/platform/gameplus/utils/n;->a([Ljava/lang/String;ZZ)Lcom/xingluo/platform/gameplus/utils/n$a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;Z)Lcom/xingluo/platform/gameplus/utils/n$a;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xingluo/platform/gameplus/utils/n;->a([Ljava/lang/String;ZZ)Lcom/xingluo/platform/gameplus/utils/n$a;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;ZZ)Lcom/xingluo/platform/gameplus/utils/n$a;
    .locals 11

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/xingluo/platform/gameplus/utils/n$a;

    invoke-direct {v0, v2, v3, v3}, Lcom/xingluo/platform/gameplus/utils/n$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    if-eqz p1, :cond_6

    const-string v0, "su"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    array-length v1, p0

    const/4 v0, 0x0

    :goto_2
    if-lt v0, v1, :cond_7

    const-string v0, "exit\n"

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-eqz p2, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_3
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v1

    move-object v1, v5

    :goto_5
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_6
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_5
    :goto_7
    new-instance v4, Lcom/xingluo/platform/gameplus/utils/n$a;

    if-nez v1, :cond_15

    move-object v1, v3

    :goto_8
    if-nez v0, :cond_16

    move-object v0, v3

    :goto_9
    invoke-direct {v4, v2, v1, v0}, Lcom/xingluo/platform/gameplus/utils/n$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    :cond_6
    :try_start_8
    const-string v0, "sh"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :cond_7
    :try_start_9
    aget-object v5, p0, v0

    if-nez v5, :cond_8

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v5, v4

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v4, v0

    move-object v0, v3

    :goto_b
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v5, :cond_9

    :try_start_b
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_b
    :goto_c
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    goto :goto_7

    :cond_c
    :try_start_c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_b

    :cond_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v4

    move-object v4, v10

    :goto_d
    :try_start_d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v5, :cond_e

    :try_start_e
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    :cond_10
    :goto_e
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    goto :goto_7

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v7, v3

    move-object v8, v3

    :goto_f
    if-eqz v4, :cond_11

    :try_start_f
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :cond_11
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_13
    :goto_10
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_14
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_6
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v7, v3

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object v7, v3

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v3, v6

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v4, v5

    move-object v3, v6

    goto :goto_f

    :catch_7
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v0, v3

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v0, v3

    goto :goto_d

    :catch_9
    move-exception v0

    move-object v5, v4

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v4, v0

    move-object v0, v3

    goto :goto_d

    :catch_a
    move-exception v0

    move-object v1, v5

    move-object v6, v3

    move-object v7, v3

    move-object v5, v4

    move-object v4, v0

    move-object v0, v3

    goto/16 :goto_d

    :catch_b
    move-exception v0

    move-object v6, v3

    move-object v7, v3

    move-object v10, v1

    move-object v1, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v10

    goto/16 :goto_d

    :catch_c
    move-exception v0

    move-object v6, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v10

    goto/16 :goto_d

    :catch_d
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v0, v3

    goto/16 :goto_b

    :catch_e
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v0, v3

    goto/16 :goto_b

    :catch_f
    move-exception v0

    move-object v1, v5

    move-object v6, v3

    move-object v7, v3

    move-object v5, v4

    move-object v4, v0

    move-object v0, v3

    goto/16 :goto_b

    :catch_10
    move-exception v0

    move-object v6, v3

    move-object v7, v3

    move-object v10, v1

    move-object v1, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v10

    goto/16 :goto_b

    :catch_11
    move-exception v0

    move-object v6, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v10

    goto/16 :goto_b

    :cond_17
    move-object v0, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_5
.end method

.method public static a()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "echo root"

    invoke-static {v2, v0, v1}, Lcom/xingluo/platform/gameplus/utils/n;->a(Ljava/lang/String;ZZ)Lcom/xingluo/platform/gameplus/utils/n$a;

    move-result-object v2

    iget v2, v2, Lcom/xingluo/platform/gameplus/utils/n$a;->a:I

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
