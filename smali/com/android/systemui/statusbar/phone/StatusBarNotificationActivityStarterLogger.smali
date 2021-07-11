.class public final Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;
.super Ljava/lang/Object;
.source "StatusBarNotificationActivityStarterLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusBarNotificationActivityStarterLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusBarNotificationActivityStarterLogger.kt\ncom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,115:1\n118#2,6:116\n118#2,6:122\n118#2,6:128\n118#2,6:134\n118#2,6:140\n118#2,6:146\n118#2,6:152\n118#2,6:158\n118#2,6:164\n118#2,6:170\n*E\n*S KotlinDebug\n*F\n+ 1 StatusBarNotificationActivityStarterLogger.kt\ncom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger\n*L\n32#1,6:116\n40#1,6:122\n48#1,6:128\n56#1,6:134\n65#1,6:140\n73#1,6:146\n81#1,6:152\n89#1,6:158\n97#1,6:164\n105#1,6:170\n*E\n"
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logExpandingBubble(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 67
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logExpandingBubble$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logExpandingBubble$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifActivityStarter"

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

.method public final logFullScreenIntentNotImportantEnough(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 99
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logFullScreenIntentNotImportantEnough$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logFullScreenIntentNotImportantEnough$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifActivityStarter"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 98
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logFullScreenIntentSuppressedByDnD(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 91
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logFullScreenIntentSuppressedByDnD$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logFullScreenIntentSuppressedByDnD$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifActivityStarter"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 90
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logHandleClickAfterKeyguardDismissed(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 42
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logHandleClickAfterKeyguardDismissed$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logHandleClickAfterKeyguardDismissed$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifActivityStarter"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 41
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logHandleClickAfterPanelCollapsed(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 50
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logHandleClickAfterPanelCollapsed$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logHandleClickAfterPanelCollapsed$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifActivityStarter"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 49
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logNonClickableNotification(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 83
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logNonClickableNotification$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logNonClickableNotification$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifActivityStarter"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 82
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSendingFullScreenIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 108
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logSendingFullScreenIntent$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logSendingFullScreenIntent$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifActivityStarter"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 106
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSendingIntentFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 75
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logSendingIntentFailed$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logSendingIntentFailed$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifActivityStarter"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStartNotificationIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 59
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartNotificationIntent$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartNotificationIntent$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifActivityStarter"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 57
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStartingActivityFromClick(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 34
    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartingActivityFromClick$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartingActivityFromClick$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifActivityStarter"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 33
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
