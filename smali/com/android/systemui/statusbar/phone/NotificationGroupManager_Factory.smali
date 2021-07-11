.class public final Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;
.super Ljava/lang/Object;
.source "NotificationGroupManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final peopleNotificationIdentifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->peopleNotificationIdentifierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 35
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 36
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->peopleNotificationIdentifierProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->get()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object p0

    return-object p0
.end method
