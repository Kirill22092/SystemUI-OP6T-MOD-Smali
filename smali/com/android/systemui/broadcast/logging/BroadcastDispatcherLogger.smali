.class public final Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;
.super Ljava/lang/Object;
.source "BroadcastDispatcherLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcastDispatcherLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastDispatcherLogger.kt\ncom/android/systemui/broadcast/logging/BroadcastDispatcherLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,118:1\n116#1:119\n117#1:126\n116#1:127\n117#1:134\n116#1:135\n117#1:142\n116#1:143\n117#1:150\n116#1:151\n117#1:158\n116#1:159\n117#1:166\n118#2,6:120\n118#2,6:128\n118#2,6:136\n118#2,6:144\n118#2,6:152\n118#2,6:160\n118#2,6:167\n*E\n*S KotlinDebug\n*F\n+ 1 BroadcastDispatcherLogger.kt\ncom/android/systemui/broadcast/logging/BroadcastDispatcherLogger\n*L\n38#1:119\n38#1:126\n49#1:127\n49#1:134\n60#1:135\n60#1:142\n70#1:143\n70#1:150\n87#1:151\n87#1:158\n103#1:159\n103#1:166\n38#1,6:120\n49#1,6:128\n60#1,6:136\n70#1,6:144\n87#1,6:152\n103#1,6:160\n116#1,6:167\n*E\n"
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method

.method public static final synthetic access$getBuffer$p(Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/log/LogBuffer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-object p0
.end method


# virtual methods
.method public final logBroadcastDispatched(ILjava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p3}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object p3

    .line 49
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 53
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastDispatched$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastDispatched$2;

    .line 116
    invoke-static {p0}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->access$getBuffer$p(Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BroadcastDispatcherLog"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 50
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 51
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 52
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logBroadcastReceived(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "intent.toString()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 42
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastReceived$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastReceived$2;

    .line 116
    invoke-static {p0}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->access$getBuffer$p(Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BroadcastDispatcherLog"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 39
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 40
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 41
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logContextReceiverRegistered(ILandroid/content/IntentFilter;)V
    .locals 12
    .param p2    # Landroid/content/IntentFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "filter.actionsIterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v2

    const-string v3, ","

    const-string v4, "Actions("

    const-string v5, ")"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    .line 80
    invoke-static/range {v2 .. v10}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p2}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v1, "filter.categoriesIterator()"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    const/4 v11, 0x0

    const-string v4, ","

    const-string v5, "Categories("

    const-string v6, ")"

    .line 83
    invoke-static/range {v3 .. v11}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    .line 87
    :goto_0
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 94
    sget-object v3, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverRegistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverRegistered$2;

    .line 116
    invoke-static {p0}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->access$getBuffer$p(Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "BroadcastDispatcherLog"

    .line 119
    invoke-virtual {p0, v4, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v1

    .line 88
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 89
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_1
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_2
    return-void
.end method

.method public final logContextReceiverUnregistered(ILjava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 106
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverUnregistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverUnregistered$2;

    .line 116
    invoke-static {p0}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->access$getBuffer$p(Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BroadcastDispatcherLog"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 104
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 105
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logReceiverRegistered(ILandroid/content/BroadcastReceiver;)V
    .locals 3
    .param p2    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object p2

    .line 60
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 63
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverRegistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverRegistered$2;

    .line 116
    invoke-static {p0}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->access$getBuffer$p(Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BroadcastDispatcherLog"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 61
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 62
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logReceiverUnregistered(ILandroid/content/BroadcastReceiver;)V
    .locals 3
    .param p2    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "receiver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object p2

    .line 70
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 73
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverUnregistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverUnregistered$2;

    .line 116
    invoke-static {p0}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->access$getBuffer$p(Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BroadcastDispatcherLog"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 71
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 72
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
