.class public final Lcom/android/systemui/dump/LogBufferEulogizerKt;
.super Ljava/lang/Object;
.source "LogBufferEulogizer.kt"


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final MAX_AGE_TO_DUMP:J

.field private static final MIN_WRITE_GAP:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 148
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/dump/LogBufferEulogizerKt;->MIN_WRITE_GAP:J

    .line 149
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/dump/LogBufferEulogizerKt;->MAX_AGE_TO_DUMP:J

    .line 150
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/dump/LogBufferEulogizerKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static final synthetic access$getDATE_FORMAT$p()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/dump/LogBufferEulogizerKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static final synthetic access$getMAX_AGE_TO_DUMP$p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/systemui/dump/LogBufferEulogizerKt;->MAX_AGE_TO_DUMP:J

    return-wide v0
.end method

.method public static final synthetic access$getMIN_WRITE_GAP$p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/systemui/dump/LogBufferEulogizerKt;->MIN_WRITE_GAP:J

    return-wide v0
.end method
