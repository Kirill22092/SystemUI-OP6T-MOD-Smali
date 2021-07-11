.class public final Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;
.super Ljava/lang/Object;
.source "ForegroundServiceDismissalFeatureController.kt"


# instance fields
.field private final proxy:Lcom/android/systemui/util/DeviceConfigProxy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/DeviceConfigProxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;->proxy:Lcom/android/systemui/util/DeviceConfigProxy;

    return-void
.end method


# virtual methods
.method public final isForegroundServiceDismissalEnabled()Z
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;->proxy:Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureControllerKt;->access$isEnabled(Lcom/android/systemui/util/DeviceConfigProxy;)Z

    move-result p0

    return p0
.end method
