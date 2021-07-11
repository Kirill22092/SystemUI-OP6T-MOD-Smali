.class public final Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;
.super Ljava/lang/Object;
.source "HighPriorityProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final groupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private final peopleNotificationIdentifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
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
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;->peopleNotificationIdentifierProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 33
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;-><init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;->peopleNotificationIdentifierProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    move-result-object p0

    return-object p0
.end method
