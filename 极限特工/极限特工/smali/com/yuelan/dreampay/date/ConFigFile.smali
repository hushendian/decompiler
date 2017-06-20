.class public Lcom/yuelan/dreampay/date/ConFigFile;
.super Ljava/lang/Object;


# static fields
.field public static CM_MAIN_URL:Ljava/lang/String; = null

.field public static final File_ErrorChannel:Ljava/lang/String; = "error_channel.info"

.field public static final File_GoOnPost:Ljava/lang/String; = "goonpost.info"

.field public static final File_RecordAlarmTime:Ljava/lang/String; = "record_alarm.info"

.field public static final File_SetAlarmClock:Ljava/lang/String; = "set_alarm.info"

.field public static final Our_VerSion:Ljava/lang/String; = "V1.25"

.field public static final SD_APKPath:Ljava/lang/String;

.field public static final SD_AppPath:Ljava/lang/String;

.field public static final SD_PICTURE:Ljava/lang/String;

.field public static final SD_Path:Ljava/lang/String;

.field public static final SD_ThemePath:Ljava/lang/String;

.field public static final SQ_ACTION_KEY:Ljava/lang/String; = "FUCK360"

.field public static Service_Num:Ljava/lang/String;

.field public static TIME_OPENNETWORK:J

.field public static TIME_YZMWAIT:J

.field public static UV:Ljava/lang/String;

.field public static Url_JSMain:Ljava/lang/String;

.field public static Url_Main_ADSTS:Ljava/lang/String;

.field public static ZC_BD_PORT:Ljava/lang/String;

.field public static inspackage_infos:Ljava/util/ArrayList;

.field public static pv_infos:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://pay3.miliroom.com:13579/SMSpay/api"

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->Url_JSMain:Ljava/lang/String;

    const-string v0, "http://pu.miliroom.com:6680/ADSts"

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->Url_Main_ADSTS:Ljava/lang/String;

    const-string v0, "97954BFE3CCEFFEB76EF726E3893E903"

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->ZC_BD_PORT:Ljava/lang/String;

    const-string v0, "4006-571-610"

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->Service_Num:Ljava/lang/String;

    const-string v0, "http://wap.cmread.com"

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->CM_MAIN_URL:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->pv_infos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->inspackage_infos:Ljava/util/ArrayList;

    invoke-static {}, Lcom/yuelan/codelib/utils/SDCardUtil;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->SD_Path:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yuelan/dreampay/date/ConFigFile;->SD_Path:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/YueLan/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->SD_AppPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yuelan/dreampay/date/ConFigFile;->SD_AppPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->SD_APKPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yuelan/dreampay/date/ConFigFile;->SD_AppPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->SD_PICTURE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yuelan/dreampay/date/ConFigFile;->SD_AppPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    const-wide/16 v0, 0x9c4

    sput-wide v0, Lcom/yuelan/dreampay/date/ConFigFile;->TIME_OPENNETWORK:J

    const-wide/32 v0, 0x9c40

    sput-wide v0, Lcom/yuelan/dreampay/date/ConFigFile;->TIME_YZMWAIT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
