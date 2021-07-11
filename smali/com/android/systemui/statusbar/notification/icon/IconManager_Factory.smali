.class public final Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;
.super Ljava/lang/Object;
.source "IconManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/icon/IconManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final iconBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/icon/IconBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final launcherAppsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;"
        }
    .end annotation
.end field

.field private final notifCollectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
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
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/icon/IconBuilder;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->launcherAppsProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->iconBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/icon/IconBuilder;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/icon/IconManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/icon/IconBuilder;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/icon/IconManager;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/notification/icon/IconManager;

    .line 38
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/icon/IconBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/icon/IconManager;-><init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/icon/IconBuilder;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/icon/IconManager;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->notifCollectionProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->launcherAppsProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->iconBuilderProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/icon/IconManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/icon/IconManager_Factory;->get()Lcom/android/systemui/statusbar/notification/icon/IconManager;

    move-result-object p0

    return-object p0
.end method
