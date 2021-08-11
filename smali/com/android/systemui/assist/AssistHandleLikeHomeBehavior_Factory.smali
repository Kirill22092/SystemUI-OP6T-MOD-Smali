.class public final Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;
.super Ljava/lang/Object;
.source "AssistHandleLikeHomeBehavior_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final sysUiFlagContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->sysUiFlagContainerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)",
            "Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p1

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;-><init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->sysUiFlagContainerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior_Factory;->get()Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;

    move-result-object p0

    return-object p0
.end method
