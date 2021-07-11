.class public final Lcom/android/systemui/statusbar/ActionClickLogger;
.super Ljava/lang/Object;
.source "ActionClickLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActionClickLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActionClickLogger.kt\ncom/android/systemui/statusbar/ActionClickLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,88:1\n118#2,6:89\n118#2,6:95\n118#2,6:101\n118#2,6:107\n118#2,6:113\n*E\n*S KotlinDebug\n*F\n+ 1 ActionClickLogger.kt\ncom/android/systemui/statusbar/ActionClickLogger\n*L\n36#1,6:89\n48#1,6:95\n59#1,6:101\n70#1,6:107\n80#1,6:113\n*E\n"
.end annotation


# instance fields
.field private final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 1
    .param p1    # Lcom/android/systemui/log/LogBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActionClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logInitialClick(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/ActionClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 40
    sget-object v1, Lcom/android/systemui/statusbar/ActionClickLogger$logInitialClick$2;->INSTANCE:Lcom/android/systemui/statusbar/ActionClickLogger$logInitialClick$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ActionClickLogger"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_2
    return-void
.end method

.method public final logKeyguardGone(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pendingIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/ActionClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 82
    sget-object v1, Lcom/android/systemui/statusbar/ActionClickLogger$logKeyguardGone$2;->INSTANCE:Lcom/android/systemui/statusbar/ActionClickLogger$logKeyguardGone$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ActionClickLogger"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logRemoteInputWasHandled(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/ActionClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 50
    sget-object v1, Lcom/android/systemui/statusbar/ActionClickLogger$logRemoteInputWasHandled$2;->INSTANCE:Lcom/android/systemui/statusbar/ActionClickLogger$logRemoteInputWasHandled$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ActionClickLogger"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logStartingIntentWithDefaultHandler(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/ActionClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 62
    sget-object v1, Lcom/android/systemui/statusbar/ActionClickLogger$logStartingIntentWithDefaultHandler$2;->INSTANCE:Lcom/android/systemui/statusbar/ActionClickLogger$logStartingIntentWithDefaultHandler$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ActionClickLogger"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method

.method public final logWaitingToCloseKeyguard(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pendingIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/ActionClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 72
    sget-object v1, Lcom/android/systemui/statusbar/ActionClickLogger$logWaitingToCloseKeyguard$2;->INSTANCE:Lcom/android/systemui/statusbar/ActionClickLogger$logWaitingToCloseKeyguard$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ActionClickLogger"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
