.class public final Lcom/android/systemui/log/LogcatEchoTrackerDebug;
.super Ljava/lang/Object;
.source "LogcatEchoTrackerDebug.kt"

# interfaces
.implements Lcom/android/systemui/log/LogcatEchoTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogcatEchoTrackerDebug.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogcatEchoTrackerDebug.kt\ncom/android/systemui/log/LogcatEchoTrackerDebug\n*L\n1#1,134:1\n*E\n"
.end annotation


# static fields
.field public static final Factory:Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;


# instance fields
.field private final cachedBufferLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/log/LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedTagLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/log/LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->Factory:Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->contentResolver:Landroid/content/ContentResolver;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedBufferLevels:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedTagLevels:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/ContentResolver;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static final synthetic access$attach(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->attach(Landroid/os/Looper;)V

    return-void
.end method

.method public static final synthetic access$getCachedBufferLevels$p(Lcom/android/systemui/log/LogcatEchoTrackerDebug;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedBufferLevels:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getCachedTagLevels$p(Lcom/android/systemui/log/LogcatEchoTrackerDebug;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedTagLevels:Ljava/util/Map;

    return-object p0
.end method

.method private final attach(Landroid/os/Looper;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->contentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "systemui/buffer"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;-><init>(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Looper;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->contentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "systemui/tag"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, p1, v4}, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$2;-><init>(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Looper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static final create(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTrackerDebug;
    .locals 1
    .param p0    # Landroid/content/ContentResolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->Factory:Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;->create(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    move-result-object p0

    return-object p0
.end method

.method private final getLogLevel(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/android/systemui/log/LogLevel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/log/LogLevel;",
            ">;)",
            "Lcom/android/systemui/log/LogLevel;"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/LogLevel;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->readSetting(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private final parseProp(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).toLowerCase()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo p1, "warning"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo p1, "verbose"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    goto/16 :goto_2

    :sswitch_2
    const-string p1, "error"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    goto/16 :goto_2

    :sswitch_3
    const-string p1, "debug"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo p1, "warn"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    goto :goto_2

    :sswitch_5
    const-string p1, "info"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    goto :goto_2

    :sswitch_6
    const-string/jumbo p1, "wtf"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    goto :goto_2

    :sswitch_7
    const-string/jumbo p1, "w"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    goto :goto_2

    :sswitch_8
    const-string/jumbo p1, "v"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    goto :goto_2

    :sswitch_9
    const-string p1, "i"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    goto :goto_2

    :sswitch_a
    const-string p1, "e"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    goto :goto_2

    :sswitch_b
    const-string p1, "d"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    goto :goto_2

    :sswitch_c
    const-string p1, "assert"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/systemui/log/LogcatEchoTrackerDebugKt;->access$getDEFAULT_LEVEL$p()Lcom/android/systemui/log/LogLevel;

    move-result-object p0

    :goto_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x53ef8cba -> :sswitch_c
        0x64 -> :sswitch_b
        0x65 -> :sswitch_a
        0x69 -> :sswitch_9
        0x76 -> :sswitch_8
        0x77 -> :sswitch_7
        0x1cd29 -> :sswitch_6
        0x3164ae -> :sswitch_5
        0x379286 -> :sswitch_4
        0x5b09653 -> :sswitch_3
        0x5c4d208 -> :sswitch_2
        0x14ed7982 -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch
.end method

.method private final readSetting(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->parseProp(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;

    move-result-object p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/android/systemui/log/LogcatEchoTrackerDebugKt;->access$getDEFAULT_LEVEL$p()Lcom/android/systemui/log/LogLevel;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public declared-synchronized isBufferLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/log/LogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "bufferName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string/jumbo v0, "systemui/buffer"

    iget-object v1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedBufferLevels:Ljava/util/Map;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->getLogLevel(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/android/systemui/log/LogLevel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isTagLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/log/LogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "tagName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemui/tag"

    iget-object v1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedTagLevels:Ljava/util/Map;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->getLogLevel(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/android/systemui/log/LogLevel;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
