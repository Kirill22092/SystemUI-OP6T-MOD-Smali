.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger;
.super Ljava/lang/Object;
.source "SharedCoordinatorLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedCoordinatorLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedCoordinatorLogger.kt\ncom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,39:1\n118#2,6:40\n*E\n*S KotlinDebug\n*F\n+ 1 SharedCoordinatorLogger.kt\ncom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger\n*L\n31#1,6:40\n*E\n"
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logUserOrProfileChanged(ILjava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "profiles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 34
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger$logUserOrProfileChanged$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/SharedCoordinatorLogger$logUserOrProfileChanged$2;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotCurrentUserFilter"

    .line 119
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 32
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 33
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
