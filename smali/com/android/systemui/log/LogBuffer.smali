.class public final Lcom/android/systemui/log/LogBuffer;
.super Ljava/lang/Object;
.source "LogBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,242:1\n118#1,6:243\n118#1,6:249\n*E\n*S KotlinDebug\n*F\n+ 1 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n201#1,6:243\n212#1,6:249\n*E\n"
.end annotation


# instance fields
.field private final buffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/systemui/log/LogMessageImpl;",
            ">;"
        }
    .end annotation
.end field

.field private frozen:Z

.field private final logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

.field private final maxLogs:I

.field private final name:Ljava/lang/String;

.field private final poolSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/android/systemui/log/LogcatEchoTracker;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/log/LogcatEchoTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logcatEchoTracker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/log/LogBuffer;->maxLogs:I

    iput p3, p0, Lcom/android/systemui/log/LogBuffer;->poolSize:I

    iput-object p4, p0, Lcom/android/systemui/log/LogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Ljava/util/ArrayDeque;

    return-void
.end method

.method private final dumpMessage(Lcom/android/systemui/log/LogMessage;Ljava/io/PrintWriter;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/log/LogBufferKt;->access$getDATE_FORMAT$p()Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLevel()Lcom/android/systemui/log/LogLevel;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getPrinter()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private final echoToLogcat(Lcom/android/systemui/log/LogMessage;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getPrinter()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLevel()Lcom/android/systemui/log/LogLevel;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/log/LogBuffer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .param p1    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dumpManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerBuffer(Ljava/lang/String;Lcom/android/systemui/log/LogBuffer;)V

    return-void
.end method

.method public final declared-synchronized dump(Ljava/io/PrintWriter;I)V
    .locals 4
    .param p1    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    sub-int/2addr v1, p2

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Ljava/util/ArrayDeque;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    if-lt v0, v1, :cond_1

    const-string v3, "message"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/log/LogBuffer;->dumpMessage(Lcom/android/systemui/log/LogMessage;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized freeze()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    if-nez v0, :cond_1

    const-string v0, "LogBuffer"

    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v2, Lcom/android/systemui/log/LogBuffer$freeze$2;->INSTANCE:Lcom/android/systemui/log/LogBuffer$freeze$2;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getFrozen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    return p0
.end method

.method public final declared-synchronized obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/log/LogLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/log/LogLevel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/systemui/log/LogMessage;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/systemui/log/LogMessageImpl;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "printer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/log/LogMessageImpl;->Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;

    invoke-virtual {v0}, Lcom/android/systemui/log/LogMessageImpl$Factory;->create()Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/log/LogBuffer;->maxLogs:I

    iget v2, p0, Lcom/android/systemui/log/LogBuffer;->poolSize:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/log/LogMessageImpl;->Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;

    invoke-virtual {v0}, Lcom/android/systemui/log/LogMessageImpl$Factory;->create()Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/log/LogMessageImpl;->reset(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;JLkotlin/jvm/functions/Function1;)V

    const-string p1, "message"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized push(Lcom/android/systemui/log/LogMessage;)V
    .locals 3
    .param p1    # Lcom/android/systemui/log/LogMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/log/LogBuffer;->maxLogs:I

    if-ne v0, v1, :cond_1

    const-string v0, "LogBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has exceeded its pool size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->buffer:Ljava/util/ArrayDeque;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    invoke-virtual {v2}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogcatEchoTracker;->isBufferLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/log/LogBuffer;->logcatEchoTracker:Lcom/android/systemui/log/LogcatEchoTracker;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    invoke-virtual {v1}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    invoke-virtual {v2}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogcatEchoTracker;->isTagLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/log/LogBuffer;->echoToLogcat(Lcom/android/systemui/log/LogMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unfreeze()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z

    if-eqz v0, :cond_1

    const-string v0, "LogBuffer"

    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v2, Lcom/android/systemui/log/LogBuffer$unfreeze$2;->INSTANCE:Lcom/android/systemui/log/LogBuffer$unfreeze$2;

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/log/LogBuffer;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/log/LogBuffer;->frozen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
