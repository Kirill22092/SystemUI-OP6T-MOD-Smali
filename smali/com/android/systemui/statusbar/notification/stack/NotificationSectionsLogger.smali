.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;
.super Ljava/lang/Object;
.source "NotificationSectionsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationSectionsLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationSectionsLogger.kt\ncom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,94:1\n118#2,6:95\n118#2,6:101\n118#2,6:107\n118#2,6:113\n118#2,6:119\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationSectionsLogger.kt\ncom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger\n*L\n32#1,6:95\n45#1,6:101\n66#1,6:107\n70#1,6:113\n84#1,6:119\n*E\n"
.end annotation


# instance fields
.field private final logBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 1
    .param p1    # Lcom/android/systemui/log/LogBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "logBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method

.method private final logPosition(ILjava/lang/String;)V
    .locals 3

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 86
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 91
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logPosition$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logPosition$4;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifSections"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 88
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 89
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method private final logPosition(ILjava/lang/String;Z)V
    .locals 3

    if-eqz p3, :cond_0

    const-string p3, " (HUN)"

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 70
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 72
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 78
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logPosition$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logPosition$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NotifSections"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 74
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 75
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 76
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final logAlerting(IZ)V
    .locals 1

    const-string v0, "Alerting"

    .line 60
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;Z)V

    return-void
.end method

.method public final logAlertingHeader(I)V
    .locals 1

    const-string v0, "ALERTING HEADER"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logConversation(IZ)V
    .locals 1

    const-string v0, "Conversation"

    .line 58
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;Z)V

    return-void
.end method

.method public final logConversationsHeader(I)V
    .locals 1

    const-string v0, "CONVERSATIONS HEADER"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logHeadsUp(IZ)V
    .locals 1

    const-string v0, "Heads Up"

    .line 56
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;Z)V

    return-void
.end method

.method public final logIncomingHeader(I)V
    .locals 1

    const-string v0, "INCOMING HEADER"

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logMediaControls(I)V
    .locals 1

    const-string v0, "MEDIA CONTROLS"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logOther(ILjava/lang/Class;)V
    .locals 3
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 47
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 52
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logOther$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logOther$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifSections"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 49
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 50
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSilent(IZ)V
    .locals 1

    const-string v0, "Silent"

    .line 62
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;Z)V

    return-void
.end method

.method public final logSilentHeader(I)V
    .locals 1

    const-string v0, "SILENT HEADER"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logStartSectionUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 34
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 36
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logStartSectionUpdate$2;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logStartSectionUpdate$2;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifSections"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 35
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStr(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logStr$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logStr$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifSections"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 66
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
