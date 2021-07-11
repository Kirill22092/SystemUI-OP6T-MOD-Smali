.class public final Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;
.super Ljava/lang/Object;
.source "ShadeListBuilderLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShadeListBuilderLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShadeListBuilderLogger.kt\ncom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,239:1\n118#2,6:240\n118#2,6:246\n118#2,6:252\n118#2,6:258\n118#2,6:264\n118#2,6:270\n118#2,6:276\n118#2,6:282\n118#2,6:288\n118#2,6:294\n118#2,6:300\n118#2,6:306\n118#2,6:312\n118#2,6:318\n118#2,6:324\n118#2,6:330\n118#2,6:336\n118#2,6:342\n*E\n*S KotlinDebug\n*F\n+ 1 ShadeListBuilderLogger.kt\ncom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger\n*L\n35#1,6:240\n42#1,6:246\n52#1,6:252\n61#1,6:258\n70#1,6:264\n79#1,6:270\n88#1,6:276\n97#1,6:282\n108#1,6:288\n122#1,6:294\n139#1,6:300\n159#1,6:306\n173#1,6:312\n189#1,6:318\n206#1,6:324\n210#1,6:330\n218#1,6:336\n227#1,6:342\n*E\n"
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logDuplicateSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "groupKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "existingKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 102
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logDuplicateSummary$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logDuplicateSummary$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 98
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 99
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 100
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 101
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logDuplicateTopLevelKey(ILjava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "topLevelKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 111
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logDuplicateTopLevelKey$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logDuplicateTopLevelKey$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 109
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 110
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logEndBuildList(III)V
    .locals 3

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 46
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEndBuildList$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEndBuildList$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    int-to-long v1, p1

    .line 43
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 44
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 45
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logEntryAttachStateChanged(ILjava/lang/String;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/collection/GroupEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/notification/collection/GroupEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 127
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEntryAttachStateChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logEntryAttachStateChanged$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 123
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 124
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 125
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 126
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr3(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_2
    return-void
.end method

.method public final logFilterChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 3
    .param p2    # Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 159
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 163
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFilterChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFilterChanged$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 160
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 162
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_2
    return-void
.end method

.method public final logFinalList(Ljava/util/List;)V
    .locals 12
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "ShadeListBuilder"

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$2;

    .line 118
    invoke-virtual {v0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 208
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    .line 209
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 210
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v6, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 213
    sget-object v7, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$4;

    .line 118
    invoke-virtual {v5}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v8

    if-nez v8, :cond_1

    .line 119
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v6

    .line 211
    invoke-interface {v6, v3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 212
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v5, v6}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 217
    :cond_1
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v5, :cond_4

    .line 218
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getSummary()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 219
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v7, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 221
    sget-object v8, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$5$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$5$2;

    .line 118
    invoke-virtual {v6}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v9

    if-nez v9, :cond_2

    .line 119
    invoke-virtual {v6, v1, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v7

    const-string v8, "it"

    .line 220
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6, v7}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 225
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object v5

    const-string v6, "entry.children"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_4

    .line 226
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 227
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v9, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 230
    sget-object v10, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$7;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalList$7;

    .line 118
    invoke-virtual {v8}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v11

    if-nez v11, :cond_3

    .line 119
    invoke-virtual {v8, v1, v9, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v9

    .line 228
    invoke-interface {v9, v6}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    const-string v10, "child"

    .line 229
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v8, v9}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final logFinalizeFilterInvalidated(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 91
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalizeFilterInvalidated$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logFinalizeFilterInvalidated$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 89
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 90
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logNotifSectionInvalidated(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 73
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logNotifSectionInvalidated$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logNotifSectionInvalidated$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 71
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 72
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logOnBuildList()V
    .locals 3

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 36
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logOnBuildList$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logOnBuildList$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logParentChanged(ILcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V
    .locals 3
    .param p2    # Lcom/android/systemui/statusbar/notification/collection/GroupEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/collection/GroupEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 139
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 143
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logParentChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logParentChanged$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 140
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 141
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 142
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_2
    return-void
.end method

.method public final logPreGroupFilterInvalidated(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "filterName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 55
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPreGroupFilterInvalidated$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPreGroupFilterInvalidated$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 53
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 54
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPromoterChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V
    .locals 3
    .param p2    # Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 177
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPromoterChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPromoterChanged$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 174
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 176
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_2
    return-void
.end method

.method public final logPromoterInvalidated(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 64
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPromoterInvalidated$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logPromoterInvalidated$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 62
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 63
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSectionChanged(ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;ILcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;I)V
    .locals 3
    .param p2    # Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 189
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 195
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logSectionChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/listbuilder/ShadeListBuilderLogger$logSectionChanged$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ShadeListBuilder"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    int-to-long v1, p1

    .line 190
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 192
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    if-eqz p4, :cond_1

    .line 193
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 194
    invoke-interface {v0, p5}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_2
    return-void
.end method
