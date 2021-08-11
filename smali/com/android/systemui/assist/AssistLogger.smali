.class public Lcom/android/systemui/assist/AssistLogger;
.super Ljava/lang/Object;
.source "AssistLogger.kt"


# static fields
.field private static final SESSION_END_EVENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/assist/AssistantSessionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final assistHandleBehaviorController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

.field private final assistUtils:Lcom/android/internal/app/AssistUtils;

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentInstanceId:Lcom/android/internal/logging/InstanceId;

.field private final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field private final phoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/assist/AssistantSessionEvent;

    sget-object v1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/assist/AssistLogger;->SESSION_END_EVENTS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/assist/AssistHandleBehaviorController;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/internal/logging/UiEventLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/internal/app/AssistUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/assist/PhoneStateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/assist/AssistHandleBehaviorController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistUtils"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneStateMonitor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistHandleBehaviorController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistLogger;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/android/systemui/assist/AssistLogger;->assistUtils:Lcom/android/internal/app/AssistUtils;

    iput-object p4, p0, Lcom/android/systemui/assist/AssistLogger;->phoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    iput-object p5, p0, Lcom/android/systemui/assist/AssistLogger;->assistHandleBehaviorController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    new-instance p1, Lcom/android/internal/logging/InstanceIdSequence;

    const/high16 p2, 0x100000

    invoke-direct {p1, p2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-void
.end method


# virtual methods
.method protected final clearInstanceId()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    return-void
.end method

.method protected final getAssistantComponentForCurrentUser()Landroid/content/ComponentName;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/assist/AssistLogger;->assistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    const-string v0, "assistUtils.getAssistCom\u2026Monitor.getCurrentUser())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected final getAssistantUid(Landroid/content/ComponentName;)I
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "assistantComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistLogger;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AssistLogger"

    const-string v1, "Unable to find Assistant UID"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method protected final getOrCreateInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    const-string p0, "instanceId"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final reportAssistantInvocationEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Landroid/content/ComponentName;Ljava/lang/Integer;)V
    .locals 7
    .param p1    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "invocationEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistLogger;->getAssistantComponentForCurrentUser()Landroid/content/ComponentName;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/assist/AssistLogger;->getAssistantUid(Landroid/content/ComponentName;)I

    move-result v2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/android/systemui/assist/AssistantInvocationEvent;->Companion:Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistLogger;->phoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;->deviceStateFromLegacyDeviceState(I)I

    move-result p3

    :goto_1
    move v5, p3

    const/16 v0, 0x119

    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistLogger;->getOrCreateInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/assist/AssistLogger;->assistHandleBehaviorController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->areHandlesShowing()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIZ)V

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantInvocationExtraData()V

    return-void
.end method

.method public final reportAssistantInvocationEventFromLegacy(IZLandroid/content/ComponentName;Ljava/lang/Integer;)V
    .locals 1
    .param p3    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/assist/AssistantInvocationEvent;->Companion:Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {v0, p4}, Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;->deviceStateFromLegacyDeviceState(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :goto_0
    sget-object v0, Lcom/android/systemui/assist/AssistantInvocationEvent;->Companion:Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;->eventFromLegacyInvocationType(IZ)Lcom/android/systemui/assist/AssistantInvocationEvent;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantInvocationEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Landroid/content/ComponentName;Ljava/lang/Integer;)V

    return-void
.end method

.method protected reportAssistantInvocationExtraData()V
    .locals 0

    return-void
.end method

.method public final reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 4
    .param p1    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sessionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistLogger;->getAssistantComponentForCurrentUser()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistLogger;->getAssistantUid(Landroid/content/ComponentName;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistLogger;->getOrCreateInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    invoke-interface {v2, p1, v1, v0, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    sget-object v0, Lcom/android/systemui/assist/AssistLogger;->SESSION_END_EVENTS:Ljava/util/Set;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistLogger;->clearInstanceId()V

    :cond_0
    return-void
.end method
