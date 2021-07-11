.class public final Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;
.super Ljava/lang/Object;
.source "NotificationSectionsFeatureManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;->proxyProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;-><init>(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;->proxyProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager_Factory;->get()Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    move-result-object p0

    return-object p0
.end method
