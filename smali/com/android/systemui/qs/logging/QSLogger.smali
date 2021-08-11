.class public final Lcom/android/systemui/qs/logging/QSLogger;
.super Ljava/lang/Object;
.source "QSLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQSLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QSLogger.kt\ncom/android/systemui/qs/logging/QSLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,147:1\n145#1:148\n146#1:155\n145#1:156\n146#1:163\n145#1:164\n146#1:171\n145#1:172\n146#1:179\n145#1:180\n146#1:187\n145#1:188\n146#1:195\n145#1:196\n146#1:203\n145#1:204\n146#1:211\n145#1:212\n146#1:219\n118#2,6:149\n118#2,6:157\n118#2,6:165\n118#2,6:173\n118#2,6:181\n118#2,6:189\n118#2,6:197\n118#2,6:205\n118#2,6:213\n118#2,6:220\n*E\n*S KotlinDebug\n*F\n+ 1 QSLogger.kt\ncom/android/systemui/qs/logging/QSLogger\n*L\n37#1:148\n37#1:155\n45#1:156\n45#1:163\n54#1:164\n54#1:171\n63#1:172\n63#1:179\n73#1:180\n73#1:187\n84#1:188\n84#1:195\n95#1:196\n95#1:203\n106#1:204\n106#1:211\n123#1:212\n123#1:219\n37#1,6:149\n45#1,6:157\n54#1,6:165\n63#1,6:173\n73#1,6:181\n84#1,6:189\n95#1,6:197\n106#1,6:205\n123#1,6:213\n145#1,6:220\n*E\n"
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method

.method public static final synthetic access$getBuffer$p(Lcom/android/systemui/qs/logging/QSLogger;)Lcom/android/systemui/log/LogBuffer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-object p0
.end method

.method private final toStateString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "wrong state"

    goto :goto_0

    :cond_0
    const-string p0, "active"

    goto :goto_0

    :cond_1
    const-string p0, "inactive"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "unavailable"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final logAllTilesChangeListening(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "containerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allSpecs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logAllTilesChangeListening$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logAllTilesChangeListening$2;

    invoke-static {p0}, Lcom/android/systemui/qs/logging/QSLogger;->access$getBuffer$p(Lcom/android/systemui/qs/logging/QSLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "QSLog"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPanelExpanded(ZLjava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "containerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logPanelExpanded$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logPanelExpanded$2;

    invoke-static {p0}, Lcom/android/systemui/qs/logging/QSLogger;->access$getBuffer$p(Lcom/android/systemui/qs/logging/QSLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "QSLog"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logTileAdded(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tileSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileAdded$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileAdded$2;

    invoke-static {p0}, Lcom/android/systemui/qs/logging/QSLogger;->access$getBuffer$p(Lcom/android/systemui/qs/logging/QSLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "QSLog"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logTileChangeListening(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tileSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileChangeListening$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileChangeListening$2;

    invoke-static {p0}, Lcom/android/systemui/qs/logging/QSLogger;->access$getBuffer$p(Lcom/android/systemui/qs/logging/QSLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "QSLog"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logTileClick(Ljava/lang/String;II)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tileSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileClick$2;

    invoke-static {p0}, Lcom/android/systemui/qs/logging/QSLogger;->access$getBuffer$p(Lcom/android/systemui/qs/logging/QSLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "QSLog"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logTileDestroyed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tileSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileDestroyed$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileDestroyed$2;

    invoke-static {p0}, Lcom/android/systemui/qs/logging/QSLogger;->access$getBuffer$p(Lcom/android/systemui/qs/logging/QSLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "QSLog"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logTileLongClick(Ljava/lang/String;II)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tileSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileLongClick$2;

    invoke-static {p0}, Lcom/android/systemui/qs/logging/QSLogger;->access$getBuffer$p(Lcom/android/systemui/qs/logging/QSLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "QSLog"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logTileSecondaryClick(Ljava/lang/String;II)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tileSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileSecondaryClick$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileSecondaryClick$2;

    invoke-static {p0}, Lcom/android/systemui/qs/logging/QSLogger;->access$getBuffer$p(Lcom/android/systemui/qs/logging/QSLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "QSLog"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/systemui/qs/logging/QSLogger;->toStateString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logTileUpdated(Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/plugins/qs/QSTile$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tileSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/logging/QSLogger$logTileUpdated$2;->INSTANCE:Lcom/android/systemui/qs/logging/QSLogger$logTileUpdated$2;

    invoke-static {p0}, Lcom/android/systemui/qs/logging/QSLogger;->access$getBuffer$p(Lcom/android/systemui/qs/logging/QSLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "QSLog"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    iget p1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    instance-of p1, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    check-cast p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-boolean p1, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    iget-boolean p1, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_3
    return-void
.end method
