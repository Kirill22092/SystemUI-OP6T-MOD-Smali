.class public final Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;
.super Ljava/lang/Object;
.source "SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
        ">;"
    }
.end annotation


# instance fields
.field private final bypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
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

.field private final groupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
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
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->contextProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->bypassControllerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->groupManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;
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
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;)",
            "Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;"
        }
    .end annotation

    .line 72
    new-instance v6, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
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
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;"
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 60
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 61
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 62
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 63
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 58
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->proxyProvideHeadsUpManagerPhone(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideHeadsUpManagerPhone(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 0

    .line 87
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/dagger/SystemUIDefaultModule;->provideHeadsUpManagerPhone(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 86
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->bypassControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->groupManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideHeadsUpManagerPhoneFactory;->get()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-result-object p0

    return-object p0
.end method
