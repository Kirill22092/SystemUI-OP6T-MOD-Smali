.class public final Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;
.super Ljava/lang/Object;
.source "ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusBarNotificationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;->statusBarNotificationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 30
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/StatusBarNotification;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;->proxyProvideNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$ExpandableNotificationRowModule;->provideNotificationKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 41
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;->statusBarNotificationProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;->provideInstance(Ljavax/inject/Provider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
