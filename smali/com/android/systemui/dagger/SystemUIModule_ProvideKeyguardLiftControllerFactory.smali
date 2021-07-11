.class public final Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;
.super Ljava/lang/Object;
.source "SystemUIModule_ProvideKeyguardLiftControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
        ">;"
    }
.end annotation


# instance fields
.field private final asyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;"
        }
    .end annotation

    .line 74
    new-instance v6, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;"
        }
    .end annotation

    .line 61
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 62
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 63
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 64
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 65
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/dump/DumpManager;

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->proxyProvideKeyguardLiftController(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideKeyguardLiftController(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
    .locals 0

    .line 89
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/dagger/SystemUIModule;->provideKeyguardLiftController(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/KeyguardLiftController;
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemUIModule_ProvideKeyguardLiftControllerFactory;->get()Lcom/android/systemui/statusbar/phone/KeyguardLiftController;

    move-result-object p0

    return-object p0
.end method
